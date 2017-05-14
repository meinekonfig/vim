if has('nvim')
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  let g:deoplete#enable_at_startup = 1

  " deoplete-go
  let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
  let g:deoplete#sources#go#use_cache = 1
endif
