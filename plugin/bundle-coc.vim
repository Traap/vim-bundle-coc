" {{{ bundle-coc.vim 
if exists('g:loaded_bundle_coc')
  finish
endif
let g:loaded_bundle_coc=1
" -------------------------------------------------------------------------- }}}
" {{{ coc-vim : Language Server Protocol 
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

nnoremap gD <Plug>(coc-definition)
" -------------------------------------------------------------------------- }}}
