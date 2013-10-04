" Vim color file
" - SUGICOLOR -
" Maintainer:  Shun SUGIMOTO
" Last Change: 2013 Oct 04
" Revision:    1

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "sugicolor"

hi Normal guifg=white guibg=black ctermfg=white ctermbg=black
hi comment guifg=green guibg=black ctermfg=green ctermbg=black
hi type guifg=yellow guibg=black ctermfg=yellow ctermbg=black
hi statement guifg=red guibg=black ctermfg=red ctermbg=black
hi preproc guifg=magenta guibg=black ctermfg=magenta ctermbg=black
hi string guifg=yellow guibg=blue ctermfg=yellow ctermbg=blue gui=bold
hi number guifg=cyan guibg=black ctermfg=cyan ctermbg=black
hi special guifg=green guibg=blue ctermfg=green ctermbg=blue gui=bold
hi Todo guifg=black guibg=yellow ctermfg=black ctermbg=yellow gui=bold
 
