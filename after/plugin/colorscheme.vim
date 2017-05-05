" if has('gui_running')
"   set background=light
"   colorscheme lucius
" elseif &term != 'linux'
"   if &background == 'dark'
"     colorscheme gruvbox
"   else
"     colorscheme lucius
"   endif
" endif

colorscheme base16-default-dark

let base16colorspace=256 " Access colors present in 256 colorspace
set t_Co=256 " 256 color mode
set background=dark

hi Normal guibg=NONE ctermbg=NONE
