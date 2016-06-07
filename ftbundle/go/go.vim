let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']

let g:go_term_enabled = 1

nmap <Leader>god <Plug>(go-def-vertical)
nmap <Leader>goD <Plug>(go-def-split)
nmap <Leader>goi <Plug>(go-info)
nmap <leader>goc <Plug>(go-callers)

nmap <leader>gor <Plug>(go-run)
nmap <leader>gob <Plug>(go-build)
nmap <leader>got <Plug>(go-test)

nmap <leader>gocov <Plug>(go-coverage)
nmap <Leader>godoc <Plug>(go-doc-vertical)
