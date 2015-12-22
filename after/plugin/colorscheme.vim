if has('gui_running')
  set background=light
  colorscheme lucius
elseif &term != 'linux'
  if &background == 'dark'
    colorscheme gruvbox
  else
    colorscheme lucius
  endif
endif
