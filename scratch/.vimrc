
" =============================================================================
" Filename    : vimrc
" Author      : AndyC
" Last Modified : 2024-11-14
" Description : Config file for Vim, optimized for Unix systems, with support
"               for Windows (make necessary edits for Windows environments).
"               - Uses vim-plug for managing extensions
"               - CoC for language server support
" =============================================================================

" Start
" Configuring terminal identification
" set t_TI= t_TE=
" Check if Vim-Plug is installed; if not, install it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Check for Node.js, and if not present, install NVM and Node.js
if empty(glob('~/.nvm'))
  silent !curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
  silent !export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install node
elseif empty(system('node --version'))
  silent !export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install node
endif

" Initialize Vim-Plug
call plug#begin()

Plug 'vim-autoformat/vim-autoformat'
Plug 'voldikss/vim-floaterm'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'mhinz/vim-startify'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/tagalong.vim'

call plug#end()

" After installing Vim-Plug plugins, install CoC extensions
" autocmd VimEnter * if executable('node') | call CocExtensionsInstall() | endif

function! CocExtensionsInstall()
  silent !vim -c "CocInstall -sync coc-browser coc-cssmodules coc-docker coc-dash-complete coc-eslint coc-explorer coc-gist coc-git coc-html coc-htmlhint coc-html-css-support coc-java coc-json coc-lua coc-mypy coc-nginx coc-powershell coc-pydocstring coc-pyright coc-ruff coc-sh coc-svg coc-tsserver coc-xml coc-yank" +qall
endfunction

" Clipboard settings based on OS
if has('macunix')
  set clipboard=unnamedplus  " Mac
elseif has('win32') || has('win64')
  set clipboard=unnamed      " Windows
else
  set clipboard=unnamedplus  " Linux/Unix with support for unnamedplus
endif

" General Settings
if has("syntax")
  syntax on
endif
colorscheme mrkn256
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
set mouse=a
set number
set showmatch
set encoding=UTF-8
set noswapfile

" Autoformatters
" let g:formatterpath = ['/home/x-candy6/.nix-profile/bin/nixfmt']
" autocmd BufWritePre *.nix :AutoFormat

augroup python_autocommands
  autocmd!
  autocmd BufWritePost *.py execute ':!ruff format ' . shellescape(@%)
augroup END

" Clipboard Shortcuts
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "*Y
noremap <Leader>P "*P

set backspace=indent,eol,start

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" LightLine Settings
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

" FloatTerm Settings
let g:floaterm_keymap_new = '<F5>'
let g:floaterm_keymap_toggle = '<F6>'
let g:floaterm_keymap_kill = '<F7>'
let g:floaterm_keymap_next = '<F8>'

" NERDTree Settings
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
set guifont=CodeNewRoman\ Nerd\ Font\ Mono:11
nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

" Window Resize Mappings
nnoremap + :res +5<CR>
nnoremap _ :res -5<CR>
nnoremap = :vertical resize +5<CR>
nnoremap - :vertical resize -5<CR>

" COC Settings for Tab Completion
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" Tagalong and Emmet Settings
let g:tagalong_verbose = 1
let g:user_emmet_install_global = 1

" JSON Formatting Command
command! FormatJson execute '%!jq .'
