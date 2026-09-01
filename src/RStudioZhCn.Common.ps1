Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$script:ProjectRoot = Split-Path -Parent $PSScriptRoot
$script:Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

function Read-JsonFile {
    param([Parameter(Mandatory = $true)][string]$Path)
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        throw "JSON file not found: $Path"
    }
    Get-Content -LiteralPath $Path -Raw -Encoding UTF8 | ConvertFrom-Json
}

function Write-Utf8File {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][AllowEmptyString()][string]$Text
    )
    $parent = Split-Path -Parent $Path
    if ($parent) { New-Item -ItemType Directory -Path $parent -Force | Out-Null }
    [IO.File]::WriteAllText($Path, $Text, $script:Utf8NoBom)
}

function Write-JsonFile {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)]$Value,
        [int]$Depth = 20
    )
    Write-Utf8File -Path $Path -Text (($Value | ConvertTo-Json -Depth $Depth) + [Environment]::NewLine)
}

function Get-Sha256 {
    param([Parameter(Mandatory = $true)][string]$Path)
    (Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToUpperInvariant()
}

function Get-GitLsRemoteCommit {
    param([Parameter(Mandatory = $true)][AllowEmptyCollection()][object[]]$Lines)
    $normalizedLines = @($Lines)
    if ($normalizedLines.Count -eq 0) { throw 'git ls-remote returned no output.' }
    $fields = ([string]$normalizedLines[0]) -split "`t", 2
    if ($fields.Count -lt 2 -or [string]$fields[0] -notmatch '^[0-9a-fA-F]{40}$') {
        throw "Unexpected git ls-remote output: $($normalizedLines[0])"
    }
    ([string]$fields[0]).ToLowerInvariant()
}

function Assert-DescendantPath {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Parent,
        [switch]$AllowParent
    )
    $fullPath = [IO.Path]::GetFullPath($Path).TrimEnd('\')
    $fullParent = [IO.Path]::GetFullPath($Parent).TrimEnd('\')
    $prefix = $fullParent + '\'
    if (($AllowParent -and $fullPath.Equals($fullParent, [StringComparison]::OrdinalIgnoreCase)) -or
        $fullPath.StartsWith($prefix, [StringComparison]::OrdinalIgnoreCase)) {
        return $fullPath
    }
    throw "Path '$fullPath' is outside the allowed root '$fullParent'."
}

function Assert-SafeOperationRoot {
    param([Parameter(Mandatory = $true)][string]$Path)
    $fullPath = [IO.Path]::GetFullPath($Path).TrimEnd('\')
    $volumeRoot = [IO.Path]::GetPathRoot($fullPath).TrimEnd('\')
    if (-not $fullPath -or $fullPath.Equals($volumeRoot, [StringComparison]::OrdinalIgnoreCase)) {
        throw "Refusing to use a filesystem root as an operation boundary: $Path"
    }
    $fullPath
}

function Get-RStudioZhCnPathConfiguration {
    param(
        [Parameter(Mandatory = $true)][string]$Version,
        [string]$WorkspaceRoot,
        [string]$PathConfig
    )

    $defaultConfig = Join-Path $script:ProjectRoot 'config\paths.psd1'
    $localConfig = Join-Path $script:ProjectRoot 'config\paths.local.psd1'
    if (-not $PathConfig) { $PathConfig = $env:RSTUDIO_ZH_CN_PATH_CONFIG }
    if (-not $PathConfig -and (Test-Path -LiteralPath $localConfig -PathType Leaf)) {
        $PathConfig = $localConfig
    }
    if (-not $PathConfig) { $PathConfig = $defaultConfig }
    $PathConfig = [IO.Path]::GetFullPath($PathConfig)
    if (-not (Test-Path -LiteralPath $PathConfig -PathType Leaf)) {
        throw "Path configuration not found: $PathConfig"
    }

    $config = Import-PowerShellDataFile -LiteralPath $PathConfig
    if (-not $WorkspaceRoot) { $WorkspaceRoot = $env:RSTUDIO_ZH_CN_WORKSPACE }
    if (-not $WorkspaceRoot -and $config.ContainsKey('WorkspaceRoot')) {
        $WorkspaceRoot = [string]$config.WorkspaceRoot
    }
    if (-not $WorkspaceRoot -and $config.ContainsKey('DefaultWorkspaceRoot')) {
        $WorkspaceRoot = [string]$config.DefaultWorkspaceRoot
    }
    if (-not $WorkspaceRoot) {
        throw 'Workspace root is not configured. Use -WorkspaceRoot, RSTUDIO_ZH_CN_WORKSPACE, or a path config.'
    }
    $WorkspaceRoot = Assert-SafeOperationRoot -Path $WorkspaceRoot

    $layout = if ($config.ContainsKey('Layout')) { $config.Layout } else { @{} }
    $roots = if ($config.ContainsKey('Roots')) { $config.Roots } else { @{} }
    function Resolve-ConfiguredRoot {
        param([string]$Name, [string]$DefaultRelative)
        $value = if ($roots.ContainsKey($Name) -and $roots[$Name]) {
            [string]$roots[$Name]
        } elseif ($layout.ContainsKey($Name) -and $layout[$Name]) {
            [string]$layout[$Name]
        } else {
            $DefaultRelative
        }
        $path = if ([IO.Path]::IsPathRooted($value)) { $value } else { Join-Path $WorkspaceRoot $value }
        Assert-SafeOperationRoot -Path $path
    }

    $manifest = Get-VersionManifest -Version $Version
    $directoryVersion = [string]$manifest.directoryVersion
    $rstudioRoot = Resolve-ConfiguredRoot -Name 'RStudio' -DefaultRelative 'RStudio'
    $workRoot = Resolve-ConfiguredRoot -Name 'Work' -DefaultRelative 'work'
    $upstreamRoot = Resolve-ConfiguredRoot -Name 'Upstream' -DefaultRelative 'work\rstudio-upstream'
    $buildRoot = Resolve-ConfiguredRoot -Name 'Build' -DefaultRelative 'work\rstudio-zh-cn-build'
    $downloadsRoot = Resolve-ConfiguredRoot -Name 'Downloads' -DefaultRelative 'work\downloads'
    $toolsRoot = Resolve-ConfiguredRoot -Name 'Tools' -DefaultRelative 'tools'
    $installersRoot = Resolve-ConfiguredRoot -Name 'Installers' -DefaultRelative 'installers\rstudio-zh-cn'
    $backupsRoot = Resolve-ConfiguredRoot -Name 'Backups' -DefaultRelative 'backups\rstudio-zh-cn'
    $legacyRoot = Resolve-ConfiguredRoot -Name 'Legacy' -DefaultRelative 'work\legacy-prototypes'
    $rRoot = Resolve-ConfiguredRoot -Name 'R' -DefaultRelative 'R-4.6.1'
    $rLibraryRoot = Resolve-ConfiguredRoot -Name 'RLibrary' -DefaultRelative 'library\4.6'

    [pscustomobject]@{
        ConfigPath          = $PathConfig
        WorkspaceRoot       = $WorkspaceRoot
        RStudioRoot         = $rstudioRoot
        WorkRoot            = $workRoot
        UpstreamRoot        = $upstreamRoot
        UpstreamSourceRoot  = Join-Path $upstreamRoot ([string]$manifest.upstream.tag)
        BuildRoot           = $buildRoot
        DownloadsRoot       = $downloadsRoot
        ToolDownloadsRoot   = Join-Path $downloadsRoot 'tools'
        ToolsRoot           = $toolsRoot
        InstallersRoot      = $installersRoot
        InstallerVersionRoot = Join-Path $installersRoot $Version
        BackupsRoot         = $backupsRoot
        LegacyRoot          = $legacyRoot
        RRoot               = $rRoot
        RLibraryRoot        = $rLibraryRoot
        OriginalRStudioRoot = Join-Path $rstudioRoot ($directoryVersion + '-original')
        CandidateRStudioRoot = Join-Path $rstudioRoot ($directoryVersion + '-zh-next')
        ActiveRStudioRoot   = Join-Path $rstudioRoot ($directoryVersion + '-zh')
    }
}

function Invoke-Checked {
    param(
        [Parameter(Mandatory = $true)][string]$FilePath,
        [Parameter(Mandatory = $true)][string[]]$ArgumentList,
        [string]$WorkingDirectory,
        [hashtable]$Environment
    )
    $previous = @{}
    if ($Environment) {
        foreach ($name in $Environment.Keys) {
            $previous[$name] = [Environment]::GetEnvironmentVariable($name, 'Process')
            [Environment]::SetEnvironmentVariable($name, [string]$Environment[$name], 'Process')
        }
    }
    if ($WorkingDirectory) { Push-Location -LiteralPath $WorkingDirectory }
    try {
        & $FilePath @ArgumentList
        if ($LASTEXITCODE -ne 0) {
            throw "Command failed with exit code ${LASTEXITCODE}: $FilePath $($ArgumentList -join ' ')"
        }
    } finally {
        if ($WorkingDirectory) { Pop-Location }
        if ($Environment) {
            foreach ($name in $Environment.Keys) {
                [Environment]::SetEnvironmentVariable($name, $previous[$name], 'Process')
            }
        }
    }
}

function Get-VersionDirectory {
    param([Parameter(Mandatory = $true)][string]$Version)
    $path = Join-Path $script:ProjectRoot (Join-Path 'translations' $Version)
    if (-not (Test-Path -LiteralPath $path -PathType Container)) {
        throw "Unsupported RStudio version: $Version"
    }
    $path
}

function Get-VersionManifest {
    param([Parameter(Mandatory = $true)][string]$Version)
    $directory = Get-VersionDirectory -Version $Version
    Read-JsonFile -Path (Join-Path $directory 'version.json')
}

function Get-RStudioProductVersion {
    param([Parameter(Mandatory = $true)][string]$RStudioRoot)
    $exe = Join-Path $RStudioRoot 'rstudio.exe'
    if (-not (Test-Path -LiteralPath $exe -PathType Leaf)) {
        throw "rstudio.exe not found: $exe"
    }
    (Get-Item -LiteralPath $exe).VersionInfo.ProductVersion
}

function Assert-OfficialRStudio {
    param(
        [Parameter(Mandatory = $true)][string]$RStudioRoot,
        [Parameter(Mandatory = $true)]$Manifest
    )
    if (-not (Test-Path -LiteralPath $RStudioRoot -PathType Container)) {
        throw "RStudio directory not found: $RStudioRoot"
    }
    $actualVersion = Get-RStudioProductVersion -RStudioRoot $RStudioRoot
    if ($actualVersion -ne $Manifest.productVersion) {
        throw "Unsupported RStudio version. Expected $($Manifest.productVersion), found $actualVersion."
    }
    $fileMap = if ($Manifest.PSObject.Properties.Name -contains 'originalFiles') {
        $Manifest.originalFiles
    } elseif ($Manifest.PSObject.Properties.Name -contains 'criticalFiles') {
        $Manifest.criticalFiles
    } else {
        throw 'Version manifest has no originalFiles/criticalFiles hash map.'
    }
    foreach ($property in $fileMap.PSObject.Properties) {
        $relative = $property.Name.Replace('/', '\')
        $path = Join-Path $RStudioRoot $relative
        if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
            throw "Required original file is missing: $relative"
        }
        $actual = Get-Sha256 -Path $path
        $expected = ([string]$property.Value).ToUpperInvariant()
        if ($actual -ne $expected) {
            throw "Original file SHA-256 mismatch: $relative`nExpected: $expected`nActual:   $actual"
        }
    }
    [pscustomobject]@{ ProductVersion = $actualVersion; Root = [IO.Path]::GetFullPath($RStudioRoot) }
}

function Get-PlaceholderTokens {
    param([Parameter(Mandatory = $true)][AllowEmptyString()][string]$Value)
    @([regex]::Matches($Value, '\{\d+(?:,[^}]*)?\}|%\d*\$?[sdif]|\$\{[^}]+\}|\{\{[^}]+\}\}') |
        ForEach-Object Value | Sort-Object)
}

function Assert-PlaceholderParity {
    param(
        [Parameter(Mandatory = $true)][AllowEmptyString()][string]$English,
        [Parameter(Mandatory = $true)][AllowEmptyString()][string]$Chinese,
        [string]$Context = ''
    )
    $left = (Get-PlaceholderTokens -Value $English) -join '|'
    $right = (Get-PlaceholderTokens -Value $Chinese) -join '|'
    if ($left -ne $right) {
        throw "Placeholder mismatch in $Context : [$English] -> [$Chinese]"
    }
}

function Test-GwtMessageFormatQuotes {
    param([Parameter(Mandatory = $true)][AllowEmptyString()][string]$Value)
    $quoted = $false
    for ($i = 0; $i -lt $Value.Length; $i++) {
        if ($Value[$i] -ne "'") { continue }
        if ($i + 1 -lt $Value.Length -and $Value[$i + 1] -eq "'") {
            $i++
            continue
        }
        $quoted = -not $quoted
    }
    -not $quoted
}

function ConvertFrom-JavaPropertyEscape {
    param([Parameter(Mandatory = $true)][AllowEmptyString()][string]$Value)
    $result = New-Object Text.StringBuilder
    for ($i = 0; $i -lt $Value.Length; $i++) {
        $ch = $Value[$i]
        if ($ch -ne '\' -or $i + 1 -ge $Value.Length) {
            [void]$result.Append($ch)
            continue
        }
        $i++
        $escaped = $Value[$i]
        switch ($escaped) {
            't' { [void]$result.Append("`t") }
            'r' { [void]$result.Append("`r") }
            'n' { [void]$result.Append("`n") }
            'f' { [void]$result.Append("`f") }
            'u' {
                if ($i + 4 -ge $Value.Length) { throw "Invalid Java properties Unicode escape: $Value" }
                $hex = $Value.Substring($i + 1, 4)
                [void]$result.Append([char]([Convert]::ToInt32($hex, 16)))
                $i += 4
            }
            default { [void]$result.Append($escaped) }
        }
    }
    $result.ToString()
}

function ConvertFrom-JavaProperties {
    param([Parameter(Mandatory = $true)][string]$Path)
    $physical = [IO.File]::ReadAllLines($Path, [Text.Encoding]::UTF8)
    $logical = New-Object 'Collections.Generic.List[string]'
    $buffer = ''
    foreach ($line in $physical) {
        $current = if ($buffer.Length -gt 0) { $buffer + $line.TrimStart() } else { $line }
        $slashes = 0
        for ($i = $current.Length - 1; $i -ge 0 -and $current[$i] -eq '\'; $i--) { $slashes++ }
        if (($slashes % 2) -eq 1) {
            $buffer = $current.Substring(0, $current.Length - 1)
        } else {
            $logical.Add($current)
            $buffer = ''
        }
    }
    if ($buffer.Length -gt 0) { $logical.Add($buffer) }

    $map = [ordered]@{}
    foreach ($raw in $logical) {
        $trimmed = $raw.TrimStart()
        if ($trimmed.Length -eq 0 -or $trimmed[0] -in @('#', '!')) { continue }
        $separator = -1
        $escaped = $false
        for ($i = 0; $i -lt $raw.Length; $i++) {
            $ch = $raw[$i]
            if (-not $escaped -and ($ch -eq '=' -or $ch -eq ':' -or [char]::IsWhiteSpace($ch))) {
                $separator = $i
                break
            }
            if ($ch -eq '\' -and -not $escaped) { $escaped = $true } else { $escaped = $false }
        }
        if ($separator -lt 0) {
            $keyRaw = $raw
            $valueRaw = ''
        } else {
            $keyRaw = $raw.Substring(0, $separator)
            $valueStart = $separator
            while ($valueStart -lt $raw.Length -and [char]::IsWhiteSpace($raw[$valueStart])) { $valueStart++ }
            if ($valueStart -lt $raw.Length -and $raw[$valueStart] -in @('=', ':')) { $valueStart++ }
            while ($valueStart -lt $raw.Length -and [char]::IsWhiteSpace($raw[$valueStart])) { $valueStart++ }
            $valueRaw = if ($valueStart -lt $raw.Length) { $raw.Substring($valueStart) } else { '' }
        }
        $key = ConvertFrom-JavaPropertyEscape -Value $keyRaw
        $map[$key] = ConvertFrom-JavaPropertyEscape -Value $valueRaw
    }
    $map
}

function Test-PropertiesPair {
    param(
        [Parameter(Mandatory = $true)][string]$EnglishPath,
        [Parameter(Mandatory = $true)][string]$ChinesePath,
        [switch]$AllowEnglishValues
    )
    $english = ConvertFrom-JavaProperties -Path $EnglishPath
    $chinese = ConvertFrom-JavaProperties -Path $ChinesePath
    $missing = @($english.Keys | Where-Object { -not $chinese.Contains($_) })
    $extra = @($chinese.Keys | Where-Object { -not $english.Contains($_) })
    if ($missing.Count -or $extra.Count) {
        throw "Properties key mismatch: $ChinesePath`nMissing: $($missing -join ', ')`nExtra: $($extra -join ', ')"
    }
    foreach ($key in $english.Keys) {
        Assert-PlaceholderParity -English ([string]$english[$key]) -Chinese ([string]$chinese[$key]) -Context "$ChinesePath::$key"
        if (-not (Test-GwtMessageFormatQuotes -Value ([string]$chinese[$key]))) {
            throw "Unterminated MessageFormat quote: $ChinesePath::$key = $($chinese[$key])"
        }
        if (-not $AllowEnglishValues -and ([string]$english[$key]) -ceq ([string]$chinese[$key]) -and
            ([string]$english[$key]) -match '[A-Za-z]{3}') {
            throw "Untranslated properties value: $ChinesePath::$key = $($english[$key])"
        }
    }
    [pscustomobject]@{ File = $ChinesePath; Keys = $english.Count }
}

function Get-JsonLeafMap {
    param(
        [Parameter(Mandatory = $true)]$Object,
        [string]$Prefix = ''
    )
    $result = @{}
    foreach ($property in $Object.PSObject.Properties) {
        $key = if ($Prefix) { "$Prefix.$($property.Name)" } else { $property.Name }
        if ($null -ne $property.Value -and $property.Value -is [pscustomobject]) {
            $nested = Get-JsonLeafMap -Object $property.Value -Prefix $key
            foreach ($nestedKey in $nested.Keys) { $result[$nestedKey] = $nested[$nestedKey] }
        } else {
            $result[$key] = $property.Value
        }
    }
    $result
}

function Test-JsonLocalePair {
    param(
        [Parameter(Mandatory = $true)][string]$EnglishPath,
        [Parameter(Mandatory = $true)][string]$ChinesePath,
        [switch]$AllowEnglishValues
    )
    $english = Get-JsonLeafMap -Object (Read-JsonFile -Path $EnglishPath)
    $chinese = Get-JsonLeafMap -Object (Read-JsonFile -Path $ChinesePath)
    $missing = @($english.Keys | Where-Object { -not $chinese.ContainsKey($_) })
    $extra = @($chinese.Keys | Where-Object { -not $english.ContainsKey($_) })
    if ($missing.Count -or $extra.Count) {
        throw "JSON locale key mismatch.`nMissing: $($missing -join ', ')`nExtra: $($extra -join ', ')"
    }
    foreach ($key in $english.Keys) {
        if ($english[$key] -isnot [string] -or $chinese[$key] -isnot [string]) { continue }
        Assert-PlaceholderParity -English ([string]$english[$key]) -Chinese ([string]$chinese[$key]) -Context "$ChinesePath::$key"
        if (-not $AllowEnglishValues -and ([string]$english[$key]) -ceq ([string]$chinese[$key]) -and
            ([string]$english[$key]) -match '[A-Za-z]{3}') {
            throw "Untranslated JSON value: $ChinesePath::$key = $($english[$key])"
        }
    }
    [pscustomobject]@{ File = $ChinesePath; Keys = $english.Count }
}

function Get-RelativeFileInventory {
    param([Parameter(Mandatory = $true)][string]$Root)
    $fullRoot = [IO.Path]::GetFullPath($Root).TrimEnd('\')
    @(Get-ChildItem -LiteralPath $fullRoot -Recurse -File -Force | Sort-Object FullName | ForEach-Object {
        [pscustomobject]@{
            Path = $_.FullName.Substring($fullRoot.Length + 1).Replace('\', '/')
            Length = $_.Length
            SHA256 = Get-Sha256 -Path $_.FullName
        }
    })
}
