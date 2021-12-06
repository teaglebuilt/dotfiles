set encoding=UTF-8
set guifont=Caskaydia\ Cove\ Nerd\ Font\ Complete:h11
set backspace=indent,eol,start


if has("unix")
  let g:uname = system("echo -n \"$(uname)\"")
endif

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

for f in split(glob('$HOME/mydots/config/vim/*.vim'), '\n')
    exe 'source' f
endfor