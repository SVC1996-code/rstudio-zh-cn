'use strict';
// Executes source-level display contracts using only the isolated pinned build dependencies.
// These tests supplement, and do not replace, real RStudio UI acceptance.
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const vm = require('node:vm');
const root = path.resolve(process.argv[2]);
const ts = require(require.resolve('typescript', { paths: [path.join(root, 'apps/panmirror')] }));
const React = require(require.resolve('react', { paths: [path.join(root, 'packages/editor')] }));
const read = p => fs.readFileSync(path.join(root, 'packages/editor/src', p), 'utf8').replace(/\r\n/g, '\n');
function evaluate(source, name, globals = {}) {
  const js = ts.transpileModule(source + '\n;result = ' + name + ';', {
    compilerOptions: { target: ts.ScriptTarget.ES2020, jsx: ts.JsxEmit.React }
  }).outputText;
  const scope = { React, ...globals };
  vm.runInNewContext(js, scope);
  return scope.result;
}
const chunkSource = read('nodes/rmd_chunk/rmd_chunk.ts');
const constructorSource = chunkSource.slice(chunkSource.indexOf('class RmdChunkCommand'), chunkSource.indexOf('const kInsertCodeChunkShortcut'));
const ChunkCommand = evaluate(constructorSource, 'RmdChunkCommand', {
  ProsemirrorCommand: class { constructor(...args) { this.args = args; } },
  insertRmdChunk: placeholder => ({ placeholder }), OmniInsertGroup: { Chunks: 'Chunks' }
});
const translations = {
  '{0} Code Chunk': '{0} 代码块', '{0} Code Cell': '{0} 代码单元格',
  'Executable {0} chunk': '可执行 {0} 代码块', 'Executable {0} cell': '可执行 {0} 代码单元格'
};
const ui = { context: { translateText: text => translations[text] || text } };
const omniSource = read('behaviors/omni_insert/omni_insert-completion.tsx');
const viewSource = omniSource.slice(omniSource.indexOf('const OmniInserterView:'), omniSource.indexOf('function isOmniInsertCommandActive'));
const render = evaluate(viewSource, 'OmniInserterView');
const textOf = element => element == null ? '' : typeof element !== 'object' ? String(element) :
  (Array.isArray(element) ? element : [element.props.children]).map(textOf).join('');
for (const lang of ['R','Python','Julia','Bash','Rcpp','SQL','D3','Mermaid','GraphViz','Stan']) {
  assert(chunkSource.includes("'" + lang + "'"), 'Engine missing from pinned source: ' + lang);
  for (const cell of [false, true]) {
    const keymap = ['test-shortcut'];
    const cmd = new ChunkCommand(ui, { defaultCellTypePython: cell }, 'unchanged-id', keymap, 5, lang, '{engine}\n', () => '', 'Chunks', ['original-keyword']);
    assert.equal(cmd.args[0], 'unchanged-id');
    assert.equal(cmd.args[1], keymap);
    assert.equal(cmd.args[2].placeholder, '{engine}\n');
    const item = cmd.args[3];
    assert.equal(item.name, `${lang} Code ${cell ? 'Cell' : 'Chunk'}`);
    assert.equal(item.displayName, `${lang} ${cell ? '代码单元格' : '代码块'}`);
    assert.equal(item.description, `可执行 ${lang} ${cell ? '代码单元格' : '代码块'}`);
    assert.deepEqual(Array.from(item.keywords), ['cell','chunk','original-keyword']);
    assert(textOf(render(item)).includes(`${item.displayName}（${item.name}）`));
    assert(!textOf(render(item)).includes('（（'));
    assert(item.name.toLowerCase().includes(lang.toLowerCase()));
  }
}
// The original filter and execution entry remain intact; UI tests separately exercise them.
assert(omniSource.includes('inserter.name.toLowerCase().indexOf(token) !== -1'));
assert(omniSource.includes('inserter.keywords?.some(keyword => keyword.indexOf(token) !== -1)'));
assert(omniSource.includes('completion.command(view.state, view.dispatch, view)'));
assert(omniSource.includes('const kOmniInsertRegex = /\\/([\\w]*)$/;'));
assert(read('nodes/heading.ts').includes('name: `Heading ${level}`,\n    displayName: headingName(ui, level),'));
assert.equal(textOf(render({ name: 'Table', displayName: 'Table', description: '', image: () => '' })), 'Table');
assert.equal(textOf(render({ name: '表格（Table）', description: '', image: () => '' })), '表格（Table）');
const treeSource = read('api/widgets/navigation-tree.tsx');
const itemSource = treeSource.slice(treeSource.indexOf('const NavigationTreeItem ='), treeSource.indexOf('// Indicates whether a given key'));
const renderNode = evaluate(itemSource, 'NavigationTreeItem', { pathToNode: node => [node], kNavigationTreeIndent: 8 });
const names = ['All Types','Sections','Figures','Tables','Equations','Listings','Theorems'];
const labels = ['所有类型','章节','图形','表格','公式','代码清单','定理'];
for (let i=0; i<names.length; i++) {
  const node = Object.freeze({ key: names[i], type: names[i], name: names[i], image: 'test-image', children: [] });
  let selected;
  const data = { nodes: [node], selectedNode: node, onSelectedNodeChanged: value => { selected=value; } };
  const untranslated = renderNode({ index: 0, style: {}, data });
  assert.equal(textOf(untranslated), names[i]);
  const translated = renderNode({ index: 0, style: {}, data: { ...data, nodeLabel: () => labels[i] } });
  assert.equal(textOf(translated), labels[i]);
  assert.equal(translated.props.children.props.children[0].props.children.props.alt, labels[i]);
  translated.props.onClick({ preventDefault(){}, stopPropagation(){} });
  assert.equal(selected, node);
  assert.equal(node.name, names[i]); assert.equal(node.key, names[i]); assert.equal(node.type, names[i]);
}
const xrefSource = read('behaviors/insert_xref/insert_xref.tsx');
assert(xrefSource.includes('key: type.type,\n      image: type.image(props.ui),\n      name: type.type,\n      type: type.type,'));
assert(xrefSource.includes('setSelectedTypeIndex(xRefTypes.findIndex(type => type.type === node.key))'));
assert(xrefSource.includes('filtered.filter(xref => xRefTypes[selectedTypeIndex].prefix.includes(xref.type))'));
assert(xrefSource.includes('nodeLabel={node => xRefTypes.some(type => type.type === node.key)'));
// A real UI round trip exposed an upstream table reference ID loss. Exercise
// the patched AST reader/writer and DOM metadata without translating that ID.
const tableSource = read('nodes/table/table-pandoc.ts');
const readerCode = tableSource.slice(tableSource.indexOf('export function readPandocTable'), tableSource.indexOf('export function writePandocTableContainer')).replace('export function', 'function');
const readTable = evaluate(readerCode, 'readPandocTable', {
  columnCssAlignments: () => [], columnPercents: () => [],
  kTableAttr: 0, kTableHead: 3, kTableHeadRows: 1, kTableBody: 4,
  kTableBodyRows: 3, kTableCaption: 1, kTableCaptionFull: 1
});
const writerCode = tableSource.slice(tableSource.indexOf('export function writePandocTableContainer'), tableSource.indexOf('export function writePandocTable(output')).replace('export function', 'function');
const writeTable = evaluate(writerCode, 'writePandocTableContainer', { PandocTokenType: { Table: 'Table' } });
const tableNodes = read('nodes/table/table-nodes.ts');
const specCode = 'const spec = {' + tableNodes.split('export const tableContainerNode =')[1].split('  spec: {')[1].split('\n  pandoc: {')[0].replace(/,\s*$/, ';');
const tableSpec = evaluate(specCode, 'spec');
for (const id of ['tbl-local', 'tbl-原始标识', '']) {
  const opened = [];
  readTable({ nodes: { table_container: 'container', table: 'table', table_caption: 'caption' } })({
    openNode: (type, attrs) => opened.push({ type, attrs }), closeNode(){}, writeTokens(){}
  }, { c: [[id, [], []], [null, []], [], [[], []], [[[], 0, [], []]]] });
  assert.equal(opened[0].attrs.id, id || null);
  let written;
  writeTable({ writeToken: (_type, action) => action(), writeAttr: value => { written=value; }, writeNode(){} },
    { attrs: opened[0].attrs, firstChild: {}, lastChild: {} });
  assert.equal(written, id || null);
  const dom = tableSpec.toDOM({ attrs: opened[0].attrs });
  assert.equal(dom[1]['data-pm-table-id'], id || null);
  const parsed = tableSpec.parseDOM[0].getAttrs({ getAttribute: key => dom[1][key] });
  assert.equal(parsed.id, id || null);
}
const skinToneSource = read('behaviors/insert_symbol/insert_symbol-emoji-skintone.tsx');
assert(skinToneSource.includes("`${previewEmoji.emoji} ${props.context.translateText('Skin tone')}`"));
assert(!skinToneSource.includes('translateText(`${previewEmoji.emoji} Skin tone`)'));
const skinToneLabel = evaluate("const label = `${previewEmoji.emoji} ${props.context.translateText('Skin tone')}`;", 'label', {
  previewEmoji: { emoji: '✋' }, props: { context: { translateText: text => text === 'Skin tone' ? '肤色' : text } }
});
assert.equal(skinToneLabel, '✋ 肤色');
assert(read('behaviors/insert_symbol/insert_symbol-popup.tsx').includes("{props.ui.context.translateText('No matching symbols')}"));
console.log('PASS: 20 dynamic titles/descriptions; 7 tree display/selection contracts; default fallback, heading English name, unchanged search/actions; raw table reference ID AST/DOM round trips; symbol display hooks.');
