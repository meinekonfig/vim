" retain relative cursor position when paging
nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>

" store relative line number jumps in jumplist
" while treating wrapped lines like real lines
" but don't do this if going up/down by 1 line
" NOTE: m' stores current position in jumplist
" NOTE: thanks to osse and bairui in #vim IRC!
nnoremap <silent> k :<C-u>execute 'normal!' (v:count > 1 ? "m'".v:count.'k' : 'gk')<Return>
nnoremap <silent> j :<C-u>execute 'normal!' (v:count > 1 ? "m'".v:count.'j' : 'gj')<Return>

" apply these tricks to up and down arrow keys
nmap <Up> k
nmap <Down> j

" provide original functionality on the g-keys
nnoremap gk k
nnoremap gj j
nnoremap g<Up> k
nnoremap g<Down> j

" save key stroke when moving between panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" use tab to move around splits
nnoremap <tab> <C-w>w
nnoremap <S-tab> <C-w>W
