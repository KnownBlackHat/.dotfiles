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
Plug 'https://github.com/terryma/vim-multiple-cursors' " C-n for multiple cursors 
Plug 'https://github.com/nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " Telescope installation
Plug 'https://github.com/nvim-lua/plenary.nvim' " plenary -> Telescope installation
Plug 'https://github.com/nvim-lua/popup.nvim' " popup -> Telescope installation
Plug 'https://github.com/nvim-treesitter/nvim-treesitter' " treesitter -> Telescope installation
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } " fzf-native -> Telescope installation
Plug 'fannheyward/telescope-coc.nvim' " coc -> Telescope installation
Plug 'kyazdani42/nvim-web-devicons' " Devicons
Plug 'mattn/emmet-vim' " Html emmet 
call plug#end()                                                                   


" Telescope default color function
:hi! link NormalFloat Normal

" Telescope Customization
lua << EOF
require('telescope').setup{
	defaults = {
		prompt_prefix = "🔍 "
		}
 }
require('telescope').load_extension('fzf')
require('telescope').load_extension('coc')
EOF

au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']
let g:user_emmet_leader_key=','
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:airline_powerline_fonts = 1
let g:airline_theme='term'
let mapleader=' '
let g:multi_cursor_quit_key='<Esc>'

nmap <C-f> :NERDTreeFocus<CR> 
nmap <C-d> :NERDTreeToggle<CR> 
nmap <C-t> :Telescope<CR>                                                
nmap <C-q> :TagbarToggle<CR>                                                  
nmap <Leader>f :Telescope find_files<CR>
nmap <Leader>g :Telescope live_grep<CR>                                                
nmap <Leader>b :Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<CR>                                                
