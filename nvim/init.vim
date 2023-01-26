" --- Instalacion de Plugins --- "
call plug#begin('~/AppData/Local/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'

Plug 'sheerun/vim-polyglot'	  " Sintaxis
Plug 'scrooloose/nerdtree'		" Gestor de archivos en forma de arbol

Plug 'itchyny/lightline.vim'	" Barra de abajo

" Typing
Plug 'mattn/emmet-vim' 				          " emmet para diseño web
Plug 'jiangmiao/auto-pairs'				      " Autocompletado de llaves, corchetes, etc
Plug 'yggdroot/indentline'				      " Ver la identaciond de alguna condicion/funcion
Plug 'alvan/vim-closetag'				        " Cerrar tags (html, xml)
Plug 'tpope/vim-surround'				        " Encerrar entre ()[]{} palabras
Plug 'scrooloose/nerdcommenter'		      " Realizar comentarios
Plug 'christoomey/vim-tmux-navigator'	  " Poder navegar entre archivos abiertos

" Plug 'sirver/ultisnips'				                    " Snipets para codigo NO SIRVE
Plug 'neoclide/coc.nvim', {'branch': 'release'}	    " Autocompletado inteligente

"Plug 'tpope/vim-repeat'    " Dependencia para vim-surround

call plug#end()

set encoding=utf-8
set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
" set numberwidth=1
" set relativenumber    " Muestra el numero de linea donde te encuentras
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)
set cursorline  " Resalta la línea actual
set encoding=utf-8
syntax enable 				  " activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
set sw=4 					      " la indentación genera 4 espacios
set nowrap					    " el texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
set clipboard=unnamed		" para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.
set showmatch   " Muestra el parentesis/corchete/llave de cierre
set showcmd

" " Indentación a 2 espacios
" set tabstop=2
" set shiftwidth=2
" set softtabstop=2
" set shiftround
" set expandtab  " Insertar espacios en lugar de <Tab>s

set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set termguicolors 			"activa el true color en la terminal

set background=dark
colorscheme sonokai

let g:lightline = {'colorscheme': 'one'}

" colorscheme gruvbox
" let g:gruvbox_contrast_dark='hard'
" colorscheme onedark

" configuracion por defecto de coc
" TextEdit might fail if hidden is not set.
set hidden