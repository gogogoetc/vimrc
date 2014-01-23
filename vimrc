" GERERIC SETTINGS
set nocompatible	" not compatible with the old-fashion vi mode
set bs=2			" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set autoread		" auto read when file is changed from outside
set hlsearch		" search highlighting
set incsearch		" incremental search

set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=4
set autoindent
set cindent
set number
set updatetime=100

" ENCODING SETTINGS
set fenc=cp936
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936,big5,gb2312
set fileformats=unix,dos

filetype off                " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Tabular'
Bundle 'taglist.vim'
Bundle 'DoxygenToolkit.vim'
Bundle 'SirVer/ultisnips'

" go-lang config
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

filetype plugin indent on   " required!
filetype indent on			" Enable filetype-specific indenting
filetype plugin on			" Enable filetype-specific plugins
syntax on
color desert

" doubleword backspace
if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
	set ambiwidth=double
endif

" paste mode switch
set pastetoggle=<F10>

" set leader to ,
let mapleader=","
let g:mapleader=","

" keymaps
nmap <leader>/ :nohl<CR>
nmap <leader>m :make<CR>

" quickfix
map <leader>p :cp<CR>
map <leader>n :cn<CR>

" go to prev tab
map <S-H> gT
" go to next tab
map <S-L> gt


" BUFREADPOST settings
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" TLIST settings
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Auto_Update=1

" NERDTREE settings
nnoremap <silent> <F7> :NERDTreeToggle<CR>
let NERDTreeWinSize=16
let NERDTreeWinPos="right"

" DoxygenToolkit setttings
let g:DoxygenToolkit_authorName="csp"
let g:DoxygenToolkit_briefTag_pre = ""
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_briefTag_post = "- "
let g:DoxygenToolkit_paramTag_pre="@"
let g:DoxygenToolkit_paramTag_post=":\t"
let g:DoxygenToolkit_licenseTag="My own license" 

map <F3>a :DoxAuthor
map <F3>f :Dox
map <F3>b :DoxBlock

" gtags-cscope settings
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Auto_Map = 1

" YouCompletionMe
let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
