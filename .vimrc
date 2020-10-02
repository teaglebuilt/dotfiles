set nocompatible


source ~/.vim/bundles.vim
source ~/.vim/globals.vim

for f in split(glob('~/.vim/settings/*.vim'), '\n')
    exe 'source' f
endfor

source ~/.vim/syntax.vim