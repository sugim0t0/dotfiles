" Vim color file
" - SUGICOLOR -
" Maintainer:  Shun SUGIMOTO
" Last Change: 2019 Oct 22
" Revision:    3

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "sugicolor"

hi Normal guifg=white guibg=black ctermfg=white ctermbg=16
hi comment guifg=green guibg=black ctermfg=82 ctermbg=16
hi type guifg=yellow guibg=black ctermfg=11 ctermbg=16 gui=bold cterm=bold
hi statement guifg=red guibg=black ctermfg=196 ctermbg=16 gui=bold cterm=bold
hi identifier guifg=cyan guibg=black ctermfg=45 ctermbg=16
hi function guifg=cyan guibg=black ctermfg=45 ctermbg=16
hi preproc guifg=magenta guibg=black ctermfg=201 ctermbg=16 gui=bold cterm=bold
hi constant guifg=cyan guibg=black ctermfg=45 ctermbg=16 gui=bold cterm=bold
hi string guifg=white guibg=purple ctermfg=white ctermbg=55 gui=bold
hi character guifg=white guibg=purple ctermfg=white ctermbg=55 gui=bold
hi number guifg=white guibg=#00008B ctermfg=white ctermbg=19
hi special guifg=yellow guibg=blue ctermfg=11 ctermbg=19 gui=bold cterm=bold
hi Todo guifg=black guibg=yellow ctermfg=16 ctermbg=11 gui=bold cterm=bold
hi Visual ctermfg=16 ctermbg=16
hi LineNr ctermfg=yellow ctermbg=16

hi CursorLine cterm=NONE ctermbg=27
hi CursorColumn ctermbg=27
hi CursorLineNr term=bold cterm=bold ctermfg=cyan ctermbg=NONE

" -- for C
hi cSpecial guifg=yellow guibg=blue ctermfg=11 ctermbg=19 gui=bold cterm=bold
hi cStorageClass guifg=orange guibg=blue ctermfg=214 ctermbg=16 gui=bold cterm=bold

" -- for Python
hi pythonBuiltin guifg=magenta guibg=black ctermfg=201 ctermbg=16

