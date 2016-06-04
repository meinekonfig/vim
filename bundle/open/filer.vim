let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_quick_look_command = 'gloobus-preview'
let g:vimfiler_ignore_pattern = '^\%(.DS_Store\)$'

nnoremap <silent> <Leader>f :VimFilerCurrentDir -quit<Return>
nnoremap <silent> <Leader>F :VimFilerBufferDir -quit<Return>
nnoremap <silent> <Leader>ds :VimFilerSplit<CR>

" prevent `VimFiler` from populating the <C-o> / <C-i> jumplist
" https://github.com/Shougo/unite.vim/issues/278#issuecomment-24491066
autocmd BufLeave \[vimfiler\]* if "nofile" ==# &buftype | setlocal bufhidden=wipe | endif

" autocmd FileType vimfiler call s:vimfiler_my_settings()
" function! s:vimfiler_my_settings()
"   nmap <buffer> <C-c> <Plug>(vimfiler_hide)
" endfunction

autocmd FileType vimfiler call s:vimfiler_settings()
function! s:vimfiler_settings()
	nunmap <buffer> <C-l>
	nunmap <buffer> <C-j>
	nnoremap <buffer> <C-r> <Plug>(vimfiler_redraw_screen)
	nmap <buffer> ' <Plug>(vimfiler_toggle_mark_current_line)
	nmap <buffer> <C-q> <Plug>(vimfiler_quick_look)
	nmap <buffer> <C-w> <Plug>(vimfiler_switch_to_history_directory)
        nmap <buffer> <C-c> <Plug>(vimfiler_hide)
endfunction
