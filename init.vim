 " __     ___              ____             __ _       
 " \ \   / (_)_ __ ___    / ___|___  _ __  / _(_) __ _ 
 "  \ \ / /| | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |
 "   \ V / | | | | | | | | |__| (_) | | | |  _| | (_| |
 "    \_/  |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |
 "
syntax on
set number
set relativenumber
set mouse=a
set noerrorbells
set sw=1
set expandtab
set smartindent
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf8
set cursorline
set splitbelow
set splitright
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

" Html
highlight link htmlTag htmlTagName
highlight link htmlEndTag htmlTagName

set colorcolumn=120

highlight ColoColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')
"Themes
Plug 'chun-yang/auto-pairs',
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'},
Plug 'itchyny/lightline.vim',
Plug 'Yggdroot/indentLine',
Plug 'morhetz/gruvbox',
Plug 'scrooloose/nerdtree',
Plug 'neoclide/coc.nvim',
Plug 'christoomey/vim-tmux-navigator',
Plug 'junegunn/fzf',
Plug 'junegunn/fzf.vim',
Plug 'nathanaelkane/vim-indent-guides',
Plug 'sainnhe/sonokai',
Plug 'larsbs/vimterial_dark',
Plug 'glepnir/oceanic-material',
Plug 'sheerun/vim-polyglot',
Plug 'shinchu/lightline-gruvbox.vim',
Plug 'alvan/closetag.vim',
Plug 'easymotion/vim-easymotion',
Plug 'turbio/bracey.vim',
Plug 'ervandew/supertab',
Plug 'github/copilot.vim',
Plug 'sainnhe/gruvbox-material',
Plug 'vim-airline/vim-airline',
Plug 'vim-airline/vim-airline-themes',
Plug 'nvim-lualine/lualine.nvim',
Plug 'kyazdani42/nvim-web-devicons',
Plug 'prettier/vim-Prettier', { 'do': 'yarn install' },
Plug 'preservim/nerdcommenter',
Plug 'ryanoasis/vim-devicons',
Plug 'vwxyutarooo/nerdtree-devicons-syntax',
Plug 'mlaursen/vim-react-snippets',
Plug 'neovim/nvim-lspconfig',
Plug 'jose-elias-alvarez/null-ls.nvim',
Plug 'MunifTanjim/eslint.nvim'
"visual
call plug#end()

let mapleader = ","

set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
let g:airline_theme = 'gruvbox_material'
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox_material'

"configuration gruvbox material
let g:gruvbox_material_transparent_background = 0 
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_ui_contrast = 'high'
let g:gruvbox_material_statusline_style = 'original'
let g:gruvbox_material_palette = 'original'

" Devicons
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir  =  1 
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile  =  1
let g:NERDTreeHighlightFolders  =  1 

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule
"Python configuration
let g:python_support_python2_require = 0
let g:python_support_python3_require = 0
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'flake8')
let g:python_support_python2_requirements = add(get(g:,'python_support_python2_requirements',[]),'flake8')
let g:python_support_python2_venv = 0
let g:python_support_python3_venv = 0

lua << END
require'lualine'.setup {
  options = {
    theme = 'gruvbox-material'
  }
 }
END

" Indent
set ts=2 sw=2 et
let g:indent_guides_start_level=3

" Prettier Config
let g:prettier#autoformat=1

" ShortCodes Config

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
nnoremap <leader>w :w<CR>
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader><Space>n :NERDTreeRefreshRoot<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader> <up> :TmuxNavigateUp<CR>
nnoremap <leader> <down> :TmuxNavigateDown<CR>
nnoremap <leader> <left> :TmuxNavigateLeft<CR>
noremap <leader> <right> :TmuxNavigateRight<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>t :split<CR>:ter<CR>:resize 15<CR>
vnoremap <leader>t :split<CR>:ter<CR>:resize 15<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nnoremap <leader>p :Prettier <CR>

"Create Files
nnoremap <leader>ns :edit<bar>$<CR>
