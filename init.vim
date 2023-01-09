:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set wrap
:set laststatus=2
:set encoding=utf-8


call plug#begin()                                                         
                                           
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status Bar
Plug 'vim-airline/vim-airline-themes' " Status Bar Theme
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim                                   
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion C-y -> selects autocomplete
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation           
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + n for multiple cursors                                                                         
Plug 'https://github.com/nvim-telescope/telescope.nvim' " Telescope installation
Plug 'https://github.com/nvim-lua/plenary.nvim' " plenary -> Telescope installation
Plug 'https://github.com/nvim-lua/popup.nvim' " popup -> Telescope installation
call plug#end()                                                                   

                                                                                 
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:airline_powerline_fonts = 1
let g:airline_theme='term'


nmap <C-f> :NERDTreeFocus<CR> 
nmap <C-d> :NERDTreeToggle<CR> 
nmap <C-t> :Telescope<CR>                                                
nmap <C-q> :TagbarToggle<CR>                                                  
nmap <Leader>f :Telescope find_files<CR>
nmap <Leader>g :Telescope live_grep<CR>                                                
