call plug#begin()
Plug 'vim-autoformat/vim-autoformat'
Plug 'voldikss/vim-floaterm'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'

" IDE Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Automatically format Nix files on save

call plug#end()

" Syntax Highlighting
if has("syntax")
        syntax on
endif
colorscheme mrkn256 
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
set mouse=a            " Enable mouse usage (all modes)
set number
set showmatch
set encoding=UTF-8
set noswapfile


let g:formatterpath = ['/home/x-candy6/.nix-profile/bin/nixfmt']
autocmd BufWritePre *.nix :AutoFormat

set clipboard=unnamedplus  
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "*Y
noremap <Leader>P "*P

" set backspace=indent,eol,start #adjust if needed

" LightLine Settings
set laststatus=2

" Lightline theme
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

" FloatTerm
let g:floaterm_keymap_new =    '<F5>'
let g:floaterm_keymap_toggle = '<F6>'
let g:floaterm_keymap_kill =   '<F7>'
let g:floaterm_keymap_next =   '<F8>'


" NERDTree
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
set guifont=CodeNewRoman\ Nerd\ Font\ Mono:11

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"map <C-m> :tabmove    
map <C-w> :tabclose<CR>
map <C-t> :tabnew<CR>

" Window resize -  
nnoremap + :res +5<CR>
nnoremap _ :res -5<CR>
nnoremap = :vertical resize +5<CR>
nnoremap - :vertical resize -5<CR>

