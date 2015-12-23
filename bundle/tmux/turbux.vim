let g:no_turbux_mappings = 1
let g:turbux_command_prefix = 'bundle exec'
let g:turbux_runner = 'vimux'

autocmd BufNewFile,BufRead *_spec.rb,*.feature map <F1> <Plug>SendTestToTmux
autocmd BufNewFile,BufRead *_spec.rb,*.feature map <F2> <Plug>SendFocusedTestToTmux
