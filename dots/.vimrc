
if has("unix")
  let g:uname = system("echo -n \"$(uname)\"")
endif

for f in split(glob('$HOME/mydots/config/vim/*.vim'), '\n')
    exe 'source' f
endfor

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
call plug#end()