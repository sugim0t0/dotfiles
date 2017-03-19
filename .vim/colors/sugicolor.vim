" Vim color file
" - SUGICOLOR -
" Maintainer:  Shun SUGIMOTO
" Last Change: 2017 Mar 18
" Revision:    2

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
hi identifier guifg=cyan guibg=black ctermfg=cyan ctermbg=black
hi preproc guifg=magenta guibg=black ctermfg=magenta ctermbg=black
hi string guifg=white guibg=darkblue ctermfg=white ctermbg=darkblue gui=bold
hi number guifg=white guibg=darkred ctermfg=white ctermbg=darkred
hi special guifg=green guibg=blue ctermfg=green ctermbg=blue gui=bold
hi Todo guifg=black guibg=yellow ctermfg=black ctermbg=yellow gui=bold
 
hi CursorLine cterm=NONE ctermbg=darkblue
hi CursorColumn ctermbg=darkblue

" -- for Python
hi pythonBuiltin guifg=magenta guibg=black ctermfg=magenta ctermbg=black

