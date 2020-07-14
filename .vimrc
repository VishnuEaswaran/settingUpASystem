"
" vimrc from scratch
"
"------------------------------------------------------------------------------

syntax on           "syntax highlighting

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
set autoread        "autoread changes of opened files

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
Plug 'honza/vim-snippets'       "snippets for coding
Plug 'voldikss/vim-floaterm'    "floating terminal
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} "plugin to have ranger inside vim

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
"floating terminal configs

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'
let g:floaterm_keymap_kill   = '<F5>'
" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
"------------------------------------------------------------------------------
"Commenting operations

filetype plugin on

let mapleader = " "     "set leader as space key
let g:NERDCommentEmptyLines = 1     "allow commenting of empty lines
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }   "custom for C
nnoremap <leader>/ :NERDCommenterInvert<CR>
"------------------------------------------------------------------------------
"File operations

nnoremap <leader>f :Files<CR>
nnoremap <leader>P  :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <C-p> :GFiles<CR>

"ranger options
let g:rnvimr_ex_enable = 1
nmap <leader>r :RnvimrToggle<CR>

nmap <leader>q  :q<CR>  ":q command with space+q combination
nmap zz :w<CR>  ":w command with space+w combination
"------------------------------------------------------------------------------
"splitting and navigating windows

set splitright  "vertical split to right
set splitbelow  "horizontal split to left
noremap <leader>wv  :vnew<CR>   "vertical new split
noremap <leader>ws  :new<CR>    "horizontal new split
"window resizing
noremap <leader><DOWN> : resize -5<CR>
noremap <leader><Up> :resize +5<CR>
noremap <leader><Left> :vertical resize -5<CR>
noremap <leader><Right> :vertical resize +5<CR>
"movement between windows
noremap <Leader>l :wincmd l<CR>
noremap <Leader>h :wincmd h<CR>
noremap <Leader>j :wincmd j<CR>
noremap <Leader>k :wincmd k<CR>
