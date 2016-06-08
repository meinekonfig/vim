" prevent gutentags from indexing the entire home directory
" https://github.com/ludovicchabant/vim-gutentags/issues/13
let g:gutentags_exclude = ['*.css', '*.html', '*.js', '*.go']
let g:gutentags_tagfile = 'gutentags'

let s:notags = expand('~/.notags')
if !filereadable(s:notags)
  call writefile([], s:notags)
endif