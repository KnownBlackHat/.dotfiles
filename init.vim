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
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim                                   
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation           
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors                                                                              
                                                                                  
call plug#end()                                                                   
                                                                                  
nnoremap <C-f> :NERDTreeFocus<CR>                                                 
nnoremap <C-n> :NERDTree<CR>                                                      
nnoremap <C-t> :NERDTreeToggle<CR>                                                
nnoremap <C-q> :TagbarToggle<CR>                                                  
