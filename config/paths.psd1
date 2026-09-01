@{
    # Existing developer machines continue to work without extra arguments.
    # Override with -WorkspaceRoot, RSTUDIO_ZH_CN_WORKSPACE, or a local config.
    DefaultWorkspaceRoot = 'D:\R'

    Layout = @{
        RStudio       = 'RStudio'
        Work          = 'work'
        Upstream      = 'work\rstudio-upstream'
        Build         = 'work\rstudio-zh-cn-build'
        Downloads     = 'work\downloads'
        Tools         = 'tools'
        Installers    = 'installers\rstudio-zh-cn'
        Backups       = 'backups\rstudio-zh-cn'
        Legacy        = 'work\legacy-prototypes'
        R             = 'R-4.6.1'
        RLibrary      = 'library\4.6'
    }
}
