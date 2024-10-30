execute pathogen#infect()
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set hlsearch " Highlight search results
set paste
set number

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
" colorscheme tender
" set lighline theme inside lightline config
"let g:lightline = { 'colorscheme': 'tender' }
syntax enable
set background=dark
colorscheme gruvbox
set laststatus=2
let macvim_skip_colorscheme=1
if !has('gui_running')
  set t_Co=256
endif

set cursorline
set number

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

set ruler
set noswapfile

noremap <PageUp> <C-u>
noremap <PageDown> <C-d>
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
" nerdtree {{{
" Open nerdtree when vim is opening a directory
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
" nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinSize=50
" }}}
