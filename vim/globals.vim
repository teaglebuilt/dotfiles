set encoding=utf8
set guifont=Fira\ Code\ Regular\ Nerd\ Font\ Complete:h11
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
syntax enable


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 

colorscheme jellybeans