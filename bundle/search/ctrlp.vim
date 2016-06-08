" Default to filename searches - so that appctrl will find application
" controller
" let g:ctrlp_by_filename = 1
" let g:ctrlp_working_path_mode = 'ra'

" let g:ctrlp_map = ',t'
" nnoremap <silent> ,t :CtrlP<CR>

" " Additional mapping for buffer search
" nnoremap <silent> ,b :CtrlPBuffer<cr>
" nnoremap <silent> <C-b> :CtrlPBuffer<cr>

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
nnoremap <silent> t :CtrlP<cr>
nnoremap <silent><leader>t :CtrlP<cr>
nnoremap <silent><leader>r :CtrlPMRUFiles<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 0

let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0

let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 0
let g:ctrlp_max_files = 256
let g:ctrlp_max_depth = 4
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_dotfiles = 1

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif

if executable('ag')
  let g:ctrlp_show_hidden = 1
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --hidden'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  " let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
  let g:ctrlp_user_command = {
    \ 'types': { 1: ['.git/', 'cd %s && git ls-files --cached --exclude-standard --others | grep -v _workspace | grep -v private_gems'] },
    \ 'fallback': 'ack -f %s --ignore-dir=.git | head -' . g:ctrlp_max_files
    \ }
endif
