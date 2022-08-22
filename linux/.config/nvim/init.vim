syntax on			" syntax highlighting
set ignorecase			" ignore case on search
set hlsearch			" highlight search results
set tabstop=4			" number of cols occupied by tab
set softtabstop=4		" see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4		" width for autoindents
set autoindent			" indent new line based on current line
set expandtab			" expand tabs to whitespace
set number			" line numbers
set cc=80			" 80 column border
filetype plugin indent on	" auto-indenting based on filetype
set clipboard=unnamedplus	" use system clipboard
filetype plugin on		" enable loading plugin files for specific filetypes
set cursorline			" highlight current cursor line

call plug#begin("~/.vim/plugged")
" plugins
Plug 'sainnhe/gruvbox-material'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Colour schemes
if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme gruvbox-material

" KEYBINDINGS

" move line (alt+j/k)
nnoremap <A-j> <Esc>:m .+1<CR>==gi
nnoremap <A-k> <Esc>:m .-2<CR>==gi
