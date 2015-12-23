let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_quick_look_command = 'gloobus-preview'
let g:vimfiler_ignore_pattern = '^\%(.DS_Store\)$'

noremap <silent> <Leader>ds :VimFilerSplit<CR>
noremap <Leader>f :VimFilerExplorer<CR>

autocmd FileType vimfiler call s:vimfiler_settings()
function! s:vimfiler_settings()
	nunmap <buffer> <C-l>
	nunmap <buffer> <C-j>
	nnoremap <buffer> <C-r> <Plug>(vimfiler_redraw_screen)
	nmap <buffer> ' <Plug>(vimfiler_toggle_mark_current_line)
	nmap <buffer> <C-q> <Plug>(vimfiler_quick_look)
	nmap <buffer> <C-w> <Plug>(vimfiler_switch_to_history_directory)
endfunction
