set encoding=utf8
set guifont=Fira\ Code\ Regular\ Nerd\ Font\ Complete:h11
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
syntax enable


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
".....................................................
"  scrooloose/nerdtree
".....................................................

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 

"..........................
"   junegunn/goyo
"..........................

function! s:goyo_enter()
  setnoshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
endfunction

let g:goyo_width = 60
let g:limelight_default_coefficient = 0.7

nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


colorscheme jellybeans
