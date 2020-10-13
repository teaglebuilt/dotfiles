set encoding=utf8
set guifont=Fira\ Code\ Regular\ Nerd\ Font\ Complete:h11

syntax enable

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
