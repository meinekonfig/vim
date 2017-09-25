let g:ale_emit_conflict_warnings = 1

" Only lint on save or when switching back to normal mode, not every keystroke in insert mode
let g:ale_lint_on_text_changed = 'normal'
" Only fix on save
let g:ale_fix_on_save = 1

let g:ale_linters = {'go': ['gometalinter', 'gofmt', 'go build']}
let g:ale_go_gometalinter_options = '--fast'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
