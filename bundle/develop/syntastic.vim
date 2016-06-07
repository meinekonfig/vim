let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": ["scss"] }

" go syntastic checker
let g:syntastic_go_checkers = ['go']
