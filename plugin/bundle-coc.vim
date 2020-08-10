" {{{ bundle-coc.vim 

if exists('g:did_coc_loaded')
  if exists('g:loaded_bundle_coc') 
    finish
  endif
else
  " Do not assign keybinds when coc is not loaded.
  finish
endif
let g:loaded_bundle_coc=1

" -------------------------------------------------------------------------- }}}
" {{{ coc-vim : Language Server Protocol 

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Disable nodejs upgrade warning.
let g:coc_disable_startup_warning = 1

" -------------------------------------------------------------------------- }}}
