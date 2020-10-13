set nocompatible

if has("unix")
  let g:uname = system("echo -n \"$(uname)\"")
endif

" python indent
" autocmd BufNewFile,BufRead *.py setlocal foldmethod=indent tabstop=4 softtabstop=4 shiftwidth=4 textwidth=88 smarttab expandtab


source ~/.vim/bundles.vim
source ~/.vim/globals.vim

for f in split(glob('~/.vim/settings/*.vim'), '\n')
    exe 'source' f
endfor

source ~/.vim/syntax.vim