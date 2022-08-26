:set number
:set autoindent
:set tabstop=4 shiftwidth=4 softtabstop=4 smarttab

" Enable the use of the mouse
:set mouse=a

" plug.vim 
call plug#begin()

Plug 'tpope/vim-commentary'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'preservim/nerdtree'

Plug 'rafi/awesome-vim-colorschemes'

Plug 'valloric/MatchTagAlways'

Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Javascript dev
Plug 'mfussenegger/nvim-dap'


call plug#end()

colorscheme deus

" Airline setup
let g:airline_powerline_fonts = 1
let g:airline_theme='abstract'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_z = '%03.3p%%'

" Import additional configuration
source ~/.config/nvim/coc-config.vim
source ~/.config/nvim/dap-node.vim


lua << EOF
local dap = require('dap')
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {'/home/tlepine/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}
EOF





