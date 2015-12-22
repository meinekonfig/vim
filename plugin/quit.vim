nnoremap <silent> <Leader><C-q> :execute '1,' . bufnr('$') 'bdelete'<Return>
nnoremap <silent> <C-q> :qa<Return>
" nnoremap <silent> <C-S-q> :qa!<Return>

function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " We should never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction

nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>
