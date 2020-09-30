set rtp+=~/dotfiles/vim/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Python indentation
Plugin 'hynek/vim-python-pep8-indent'

" PyTest Support
Plugin 'alfredodeza/pytest.vim.git'

" Coveragepy Support
Plugin 'alfredodeza/coveragepy.vim.git'

" Markdown:
" Vim Markdown runtime files
Plugin 'tpope/vim-markdown.git'

" Hashicorp:
" Syntax highlighting and more for HCL
Plugin 'hashivim/vim-hashicorp-tools'

" A colorful, dark color scheme for Vim.
Plugin 'nanotech/jellybeans.vim.git'

call vundle#end()    
filetype plugin indent on  