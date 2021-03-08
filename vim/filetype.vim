au BufRead,BufNewFile *.py set filetype=python
au BufRead,BufNewFile *.yaml,*.yml set filetype=yaml


autocmd BufNewFile,BufRead *.vpm* call SetVimPresentationMode()
function SetVimPresentationMode()
  nnoremap <buffer> <Right> :n<CR>
  nnoremap <buffer> <Left> :N<CR>

  if !exists('#goyo')
    Goyo
  endif
endfunction
