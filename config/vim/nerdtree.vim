let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeChDirMode = 3

function NERDRefresh ()
  if &filetype == "nerdtree"
      NERDTreeRefreshRoot
  endif
endfunction

call NERDRefresh()


let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 

let NERDChristmasTree = 1                             " Enable nice colors
let NERDTreeHighlightCursorline = 1                   " Make it easy to see where we are
let NERDTreeShowBookmarks = 1                         " Make bookmarks visible
let NERDTreeShowHidden = 1                            " Show hidden files
let NERDTreeHijackNetrw = 0                           " Don't hijack NETRW
let NERDTreeChDirMode = 2                             " Update the PWD to whatever the root of the tree is
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o', '\.$', '\~$']

  "*********************
  " Keymappings
  "
  " Toggle NERDTree:
  nnoremap <F2> :NERDTreeToggle<CR>
  inoremap <F2> <Esc>:NERDTreeToggle<CR>

  " Find The Current File In NERDTree:
  nnoremap <silent> <C-F2> :NERDTreeFind<CR>