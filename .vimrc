set nocompatible
set t_Co=256
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors.git'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-expand-region'
Plugin 'slim-template/vim-slim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'unblevable/quick-scope'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'godlygeek/tabular.git'
Plugin 'solars/github-vim.git'
Plugin 'elixir-lang/vim-elixir'
Plugin 'vim-ruby/vim-ruby'
call vundle#end()            " required

set runtimepath^=~/.vim/bundle/ctrlp.vim

" ignore directories in ctrlP
set wildignore+=*/tmp/*,*/coverage/*,*.so,*.swp,*.zip

" commentary plugin mappings
nmap <BS> gcc
vmap <BS> gc

" open split buffer below current
set splitbelow

" Ag to search from projec root
let g:ag_working_path_mode="r"

" Remap leader
let mapleader = "\<Space>"

" Remap window switch
map <Leader>w <C-W><C-W>

" RSpec.vim mappings
map <Leader>t ;call RunCurrentSpecFile()<CR>
map <Leader>s ;call RunNearestSpec()<CR>
map <Leader>l ;call RunLastSpec()<CR>
map <Leader>a ;call RunAllSpecs()<CR>
let g:rspec_command = "!bundle exec rspec {spec} --format documentation"

" NERDTree config
map <Leader>n ;NERDTreeToggle<CR>
map <Leader>r ;NERDTreeFind<CR>

" Buffer switching mapping
map <Leader>[ ;bn<CR>
map <Leader>] ;bp<CR>

" Don't replace content when pasting
xnoremap p pgvy

" Expand region config
map J <Plug>(expand_region_expand)
map K <Plug>(expand_region_shrink)


syntax on
syntax enable
filetype plugin indent on    " required
set encoding=utf-8
set syn=auto
set showmatch
set autoindent
set smartindent
set cindent
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set laststatus=2
set expandtab
set smartcase
set ic
set hls
set lbr
set nu
colorscheme delek

noremap <Enter> :noh<CR>
noremap : ;
noremap ; :

" map Esc key
inoremap jk <ESC>
