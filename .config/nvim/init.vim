:set number
:set autoindent
:set tabstop=4 shiftwidth=4 softtabstop=4 smarttab

" Enable the use of the mouse
:set mouse=a

" plug.vim 
call plug#begin()

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'preservim/nerdtree'

Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

colorscheme deus

" Airline setup
let g:airline_powerline_fonts = 1
let g:airline_theme='afterglow'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_z = '%03.3p%%'


