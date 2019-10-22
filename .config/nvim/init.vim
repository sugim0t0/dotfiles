
" Reset augroup
augroup SugimotoCmd
    autocmd!
augroup END

" Env for XDG Base Directory
let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME


" -- dein --
" directory installed dein plugin
let s:dein_dir = expand('$CACHE/dein')
" dein.vim
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" If dein.vim is not existed, download it from github.
if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
" configurations for dein
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    " TOML file listed plugins
    let g:rc_dir    = expand('$CONFIG/nvim')
    let s:toml      = g:rc_dir . '/dein.toml'
    let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
    " Load TOML and cache it
    call dein#load_toml(s:toml,      {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})
    " configuration finished
    call dein#end()
    call dein#save_state()
endif
" If any plugins are not installed, install it.
if dein#check_install()
    call dein#install()
endif


" -- airline --
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'badwolf'
" let g:airline#extensions#tabline#enabled = 1


" [opt] runtimepath  : This is a list of directories which will be searched for runtime files.
set runtimepath+=$HOME/.vim,$HOME/.vim/after


" -- Options for display
" [opt] number       : Print the line number in front of each line.
set number
" [opt] ruler        : Show the line and column number of the cursor position, separated by a comma.
set ruler
" [opt] cursorline   : Highlight the screen line of the cursor with CursorLine.
set cursorline
" [opt] cursorcolumn : Highlight the screen column of the cursor with CursorColumn.
set cursorcolumn
" [opt] textwidth    : Maximum width of text that is being inserted.
set textwidth=0
" [opt] laststatus   : The value of this option influences when the last window will have a status line.
"                           0 : never
"                           1 : only if there are at least two windows
"                           2 : always
set laststatus=2
" [opt] cmdheight    : Number of screen lines to use for the command-line.
set cmdheight=2
" [opt] showmatch    : When a bracket is inserted, briefly jump to the matching one.
set showmatch
" [opt] helpheight   : Minimal initial height of the help window when it is opened with the ":help" command.
set helpheight=999
" [opt] encoding     : Sets the character encoding used inside Vim.
set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8


" -- Options for edit
" [opt] matchpairs   : Characters that form pairs. The |%| command jumps from one to the other.
set matchpairs& matchpairs+=<:>
" [opt] backspace    : Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
set backspace=indent,eol,start

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

set nowritebackup
set nobackup
set noswapfile

set encoding=UTF-8

" -- Options for cursor movement
" [opt] scrolloff    : Minimal number of screen lines to keep above and below the cursor.
set scrolloff=8


" -- Options for search
" [opt] hlsearch     : When there is a previous search pattern, highlight all its matches.
set hlsearch
" [opt] incsearch    : While typing a search command, show where the pattern, as it was typed so far, matches.
set incsearch

syntax on

" SyntaxInfo command (for colorscheme create)
" runtime! plugins/syntaxinfo.vim
colorscheme sugicolor


