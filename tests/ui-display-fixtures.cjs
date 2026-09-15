const fs = require('node:fs');
const vm = require('node:vm');
const assert = require('node:assert/strict');
const {grid, labels, keyboard, shortcutLabels} = JSON.parse(fs.readFileSync(process.argv[2], 'utf8'));
// Execute actual display-only switch bodies, adapting Java method-call syntax only.
function displayResolver(name, parameters) {
  const body = keyboard.match(new RegExp('private static String '+name+'\\([^)]*\\)\\s*\\{([\\s\\S]*?)\\n   \\}'))[1];
  return new Function(...parameters, 'labels', body.replace(/constants_\.(\w+)\(\)/g, 'labels["$1"]'));
}
const commandDisplay = displayResolver('shortcutCommandDisplay', ['id','fallback']);
const scopeDisplay = displayResolver('shortcutScopeDisplay', ['scope']);
for (const match of keyboard.matchAll(/case "([^"]+)": return constants_\.(shortcut(Display|Scope)\w+)\(\);/g)) {
  const value = match[3] === 'Display' ? commandDisplay(match[1], 'fallback', shortcutLabels) : scopeDisplay(match[1], shortcutLabels);
  assert.equal(value, shortcutLabels[match[2]]);
  assert.match(value, /[\u4e00-\u9fff]/);
}
assert.equal(commandDisplay('undo', 'Undo', shortcutLabels), '撤销');
assert.equal(commandDisplay('copylinesdown', 'Copy Lines Down', shortcutLabels), '向下复制行');
assert.equal(scopeDisplay('Editor', shortcutLabels), '编辑器');
for(const value of ['Bash','Python','Julia','SQL','Stan','D3','GraphViz','Mermaid','R','C / C++','R Markdown','Sweave','VCS','user-command']) {
  assert.equal(commandDisplay(value,value,shortcutLabels),value);
  assert.equal(scopeDisplay(value,shortcutLabels),value);
}
console.log('Shortcut display runtime PASS: command/scope consumers, Chinese labels and unchanged technical/custom fallbacks.');
const start = grid.indexOf('function gridDisplay(');
const end = grid.indexOf('\n}\n', start) + 3;
assert.ok(start >= 0 && end > start);
const context = {window: {rstudioDisplayMessages: labels}};
vm.createContext(context);
vm.runInContext(grid.slice(start, end), context);
function evaluate(code, values = {}) { Object.assign(context, values); return vm.runInContext(code, context); }
const all = grid.match(/val\.textContent = gridDisplay\("all"[^;]+;/)[0];
const val = {};
evaluate(all, {val});
assert.equal(val.textContent, '全部');
const statusStart = grid.indexOf('   var text = gridDisplay("showing"');
const statusEnd = grid.indexOf('   if (textEl)', statusStart);
const status = grid.slice(statusStart, statusEnd);
assert.ok(statusStart >= 0 && statusEnd > statusStart);
evaluate(status, {first:1,last:11,activeRows:3386,filteredRows:3386,totalRows:3386,totalCols:2,visibleColumnRangeText:()=>''});
assert.equal(context.text, '显示第 1 至 11 条，共 3,386 条记录，2 列');
evaluate(status, {first:0,last:0,activeRows:0,filteredRows:0,totalRows:5,totalCols:1});
assert.match(context.text, /共 0 条记录.*筛选前共 5 条记录.*1 列/);
const sample = {BCofLRet:0.05,CCofLRet:0.10,type:'<dbl>',Preference:'air_formatter_require_toml',Source:'project',Value:'true',text:'All',other:'NA'};
const before=JSON.stringify(sample);
const unique=grid.match(/catText = gridDisplay\("unique"[^;]+;/)[0];
evaluate(unique,{summary:{col_n_unique:304}});
assert.equal(context.catText,'304 个唯一值');
const top=grid.match(/catText \+= gridDisplay\("top"[\s\S]+?;/)[0];
evaluate(top,{summary:{col_top_value:sample.Value},topPct:35});
assert.equal(context.catText,'304 个唯一值 · 最高频：true（35%）');
const na=grid.match(/naEl\.textContent = gridDisplay\("na"[^;]+;/)[0];
const naEl={};evaluate(na,{naEl,naPct:0.1});assert.equal(naEl.textContent,'NA：<1%');
const range=grid.match(/gridDisplay\("range",[^\n]+?\)\)\]/)[0].slice(0,-1);
assert.equal(evaluate(range,{lo:0.05,hi:0.1,formatCompactNum:n=>n.toFixed(2)}),'范围：0.05–0.10');
const count=grid.match(/gridDisplay\("count",[^\n]+?pct\)/)[0];
assert.equal(evaluate(count,{count:40,pct:'1.2'}),'数量：40（1.2%）');
const columns=grid.match(/toggleLabel\.textContent = gridDisplay\(totalCols === 1[^;]+;/)[0];
const toggleLabel={};evaluate(columns,{toggleLabel,totalCols:2});assert.equal(toggleLabel.textContent,'2 列');
evaluate(columns,{toggleLabel,totalCols:1});assert.equal(toggleLabel.textContent,'1 列');
assert.equal(JSON.stringify(sample),before);
assert.ok(grid.includes('labels[bin] === null ? "NA" : String(labels[bin])'));
assert.ok(grid.includes('document.createTextNode(headlineLines[li])'));
// Execute the real DOM-producing statistics, indicator and help functions.
function element(tag) {
  const e={tag,children:[],attrs:{},textContent:'',style:{},classList:{toggle(){},contains(){return false;}},
    appendChild(child){this.children.push(child);return child;},setAttribute(k,v){this.attrs[k]=v;},
    addEventListener(){},focus(){}};
  Object.defineProperty(e,'firstChild',{get(){return this.children[0];}});
  return e;
}
context.document={createElement:element,createTextNode:text=>({textContent:text})};
function loadFunction(name) {
  const begin=grid.indexOf('var '+name+' = function(');
  assert.ok(begin>=0,name);
  const finish=grid.indexOf('\n};',begin)+3;
  assert.ok(finish>begin,name);
  evaluate(grid.slice(begin,finish));
}
loadFunction('formatStatValue');loadFunction('renderColumnStats');
const statistics={n_unique:1308,min:-0.224,max:0.349,mean:-0.000232,median:0,sd:0.022};
const statisticsBefore=JSON.stringify(statistics);
const statsContainer=element('div');
context.renderColumnStats(statsContainer,statistics,'numeric');
assert.deepEqual(statsContainer.children[0].children.map(row=>row.children[0].textContent),['唯一值数','最小值','最大值','均值','中位数','标准差']);
assert.equal(statsContainer.children[0].children[0].children[1].textContent,(1308).toLocaleString());
assert.equal(JSON.stringify(statistics),statisticsBefore);
const factorContainer=element('div');
context.renderColumnStats(factorContainer,{top_levels:['All','TRUE','<dbl>','BCofLRet'],top_counts:[4,3,2,1]},'factor');
assert.deepEqual(factorContainer.children[0].children.map(row=>row.children[0].textContent),['All','TRUE','<dbl>','BCofLRet']);
const boolContainer=element('div');context.renderColumnStats(boolContainer,{n_true:3,n_false:2},'boolean');
assert.deepEqual(boolContainer.children[0].children.map(row=>row.children[0].textContent),['TRUE','FALSE']);
loadFunction('applySidebarEntryIndicators');
const parts={'.sidebar-col-name':{textContent:'BCofLRet'},'.sidebar-pin-icon':element('span'),'.sidebar-sort-icon':element('span'),'.sidebar-filter-icon':element('span')};
const entry={getAttribute:()=> '1',querySelector:key=>parts[key]};
Object.assign(context,{pinnedColumns:new Set(),sortColumn:1,sortDirection:'asc',cachedFilterValues:{},describeFilterValue:v=>v});
context.applySidebarEntryIndicators(entry);
assert.equal(parts['.sidebar-sort-icon'].title,'按列 BCofLRet 降序排序');
assert.equal(parts['.sidebar-sort-icon'].attrs['aria-label'],parts['.sidebar-sort-icon'].title);
assert.equal(parts['.sidebar-filter-icon'].title,'筛选此列');
assert.equal(parts['.sidebar-pin-icon'].title,'固定列');
context.sortDirection='desc';context.applySidebarEntryIndicators(entry);
assert.equal(parts['.sidebar-sort-icon'].title,'取消列 BCofLRet 的排序');
context.sortDirection='';context.cachedFilterValues[1]='All';context.applySidebarEntryIndicators(entry);
assert.equal(parts['.sidebar-sort-icon'].title,'按列 BCofLRet 升序排序');
assert.equal(parts['.sidebar-filter-icon'].title,'已筛选：All');
assert.equal(context.cachedFilterValues[1],'All');assert.equal(parts['.sidebar-col-name'].textContent,'BCofLRet');
const sortBegin=grid.indexOf('   var sortText = "";');
const sortEnd=grid.indexOf('   setSortStatus(sortText);',sortBegin)+'   setSortStatus(sortText);'.length;
for(const [direction,display] of [['asc','升序'],['desc','降序']]) {
  let result;
  evaluate(grid.slice(sortBegin,sortEnd),{sortColumn:1,sortDirection:direction,cols:[{col_name:'BCofLRet'}],posForAbsColIndex:()=>0,setSortStatus:text=>{result=text;}});
  assert.equal(result,'排序依据：BCofLRet（'+display+'）');assert.equal(context.sortDirection,direction);
}
context.hideSidebarHelp=()=>{};loadFunction('buildSidebarHelpOverlay');
const help=context.buildSidebarHelpOverlay();
function allText(node){return String(node.textContent||'')+ (node.children||[]).map(allText).join('\n');}
const helpText=allText(help);
for(const heading of ['列摘要','列标题','迷你图','摘要行','筛选','详细统计'])assert.ok(helpText.includes(heading),heading);
assert.ok(helpText.includes('有限数值'));assert.ok(helpText.includes('按需计算'));assert.ok(!helpText.includes('Column summaries'));
context.window.rstudioDisplayMessages={};
const englishStats=element('div');context.renderColumnStats(englishStats,statistics,'numeric');
assert.equal(englishStats.children[0].children[0].children[0].textContent,'Unique');
assert.ok(allText(context.buildSidebarHelpOverlay()).includes('Column summaries'));
context.cachedFilterValues={};context.applySidebarEntryIndicators(entry);
assert.equal(parts['.sidebar-filter-icon'].title,'Filter column');
console.log('Data Viewer detail DOM fixtures PASS: stats, help, sort/filter/pin tooltips, literal data and English fallback.');
evaluate(columns,{toggleLabel,totalCols:1});assert.equal(toggleLabel.textContent,'1 column');
evaluate(columns,{toggleLabel,totalCols:2});assert.equal(toggleLabel.textContent,'2 columns');
assert.equal(evaluate('gridDisplay("range", "Range: {0} to {1}", "0.05", "0.10")'),'Range: 0.05 to 0.10');
assert.equal(evaluate('gridDisplay("top", "top: {0}", "$&<dbl>")'),'top: $&<dbl>');
console.log('Data Viewer consuming-path fixtures PASS: dynamic status/columns/range/count/unique/top/NA, literal data and English fallback.');
