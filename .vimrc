colorscheme sugicolor
set number

if has('vim_starting')
	" Specify the directory to be managed by bundle
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" Initialize NeoBundle
call neobundle#begin(expand('~/.vim/bundle/'))

" Put additional plugin
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

" Enable plugin/indent per filetype
filetype plugin indent on

" To be asked to install uninstalled plugin
NeoBundleCheck

