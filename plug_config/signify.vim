
" Faster sign updates on CursorHold/CursorHoldI
set updatetime=100

nnoremap <leader>hp :SignifyDiff<cr>
nnoremap <leader>hd :SignifyHunkDiff<cr>
nnoremap <leader>hu :SignifyHunkUndo<cr>

" hunk jumping
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
