"
" vimrc from scratch
"
"------------------------------------------------------------------------------
syntax on           "syntax highlighting
filetype plugin on

"------------------------------------------------------------------------------

set nocompatible    "disabling vi compatibility
set number          "show line number
set relativenumber  "relativenumber
set laststatus=2    "always show status line
set hidden          "hidden buffers
set ignorecase      "case-insensitive if only lower cases
set smartcase       "case sensitive if Capital letter occurs
set mouse+=a        "enable mouse support
set cmdheight=2     "more room for cmnds
set noerrorbells    "disable bell
set smartindent     "smartindent
set guicursor=      "stop blinking
set nohlsearch      "stop highlighting search result??
set tabstop=4       "tabs=4
set softtabstop=4   "tabs=4
set shiftwidth=4    "width=4
set expandtab       "expandtab
set incsearch       "show pattern
set termguicolors   "colorful gui rendering
set cursorline      "highlight the active line
set shortmess+=c    "Don't pass messages to |ins-completion-menu|.
set updatetime=50   "50ms for better user experience


set colorcolumn=80  "highlight column
highlight ColorColumn ctermbg=0 guibg=lightgrey

"------------------------------------------------------------------------------

"plugins section begin
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy search
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}     "true snippet and additional text editing support
Plug 'sheerun/vim-polyglot'     "code highlighting
Plug 'tpope/vim-fugitive'       "git plugin
Plug 'mbbill/undotree'          "visual undotree of vim
Plug 'gruvbox-community/gruvbox'"color scheme
Plug 'vim-airline/vim-airline'  "airline 
Plug 'christoomey/vim-tmux-navigator' "tmux navigator
Plug 'ryanoasis/vim-devicons'   "icons in vim
Plug 'preservim/nerdcommenter'  "commenter
"copied from nvim
Plug 'honza/vim-snippets'       "snippets for coding
Plug 'voldikss/vim-floaterm'    "floating terminal

"check vimspector for debigging

call plug#end()
"plugin section end

"------------------------------------------------------------------------------

" gruvbox settings
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark

"------------------------------------------------------------------------------

if executable('rg')
    let g:rg_derive_root='true'
endif


"------------------------------------------------------------------------------

let mapleader = " "     "set leader as space key

nnoremap <leader>P  :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>p :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>= :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>gruvbox-community/gruvbox
nnoremap <Leader>e :CocCommand explorer <CR>
"nnoremap <C-/>  :NERDCommenterToggle

nmap <leader>f :Vex<CR>  "openup file viewer
nmap <leader>q  :q<CR>  ":q command with space+q combination
