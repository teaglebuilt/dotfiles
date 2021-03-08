set encoding=utf8
set guifont=Fira\ Code\ Regular\ Nerd\ Font\ Complete:h11
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1



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

let g:goyo_width = 60
let g:limelight_default_coefficient = 0.7
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240


map <leader>gy :Goyo<CR>
map <leader>ll :Limelight!!<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


".........................
" Color Settings
".........................

" Enable 24-bit true colors if your terminal supports it.
if (has("termguicolors"))
  " https://github.com/vim/vim/issues/993#issuecomment-255651605
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  set termguicolors
endif

syntax enable

colorscheme jellybeans


