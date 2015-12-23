" Highlight long lines (>80)

" autocmd BufRead * highlight OverLength ctermbg=darkgrey guibg=#592929
" autocmd BufRead * match OverLength /\%81v.*/
" autocmd BufRead * let w:long_line_match = 1
"
" fu! LongLineHighlightToggle()
"   highlight OverLength ctermbg=darkgrey guibg=#592929
"   if exists('w:long_line_match')
"     match OverLength //
"     unlet w:long_line_match
"   else
"     match OverLength /\%81v.*/
"     let w:long_line_match = 1
"   endif
" endfunction
" map <Leader>l :call LongLineHighlightToggle()<CR>
