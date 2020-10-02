
" Highlight Trailing Whitespace:
call matchadd('Error', '\s\+\%#\@<!$', 20)

" Highlight Spaces In Front Of REAL Tabs:
call matchadd('Error', ' \+\ze\t', 20)

let OPTION_NAME = 1
" Python Syntax Highlighting
let python_version_2 = 0
let python_highlight_indents = 0
let python_highlight_all = 1
let python_highlight_builtin_funcs = 1