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

nmap <Leader>gld <Plug>(go-def-vertical)
nmap <Leader>gldo <Plug>(go-doc-vertical)
nmap <Leader>glds <Plug>(go-def-split)
nmap <Leader>gli <Plug>(go-info)
nmap <leader>glc <Plug>(go-callers)

nmap <leader>glr <Plug>(go-run)
nmap <leader>glb <Plug>(go-build)
nmap <leader>glt <Plug>(go-test)
nmap <leader>glc <Plug>(go-coverage)
