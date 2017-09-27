if has('nvim') == 1
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  " enable deoplete
  let g:deoplete#enable_at_startup = 1

  " deoplete-go
  let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
  let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
  let g:deoplete#sources#go#use_cache = 1
endif
