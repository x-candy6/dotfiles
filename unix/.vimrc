" Install Vim-Plug
call plug#begin()

Plug 'vim-autoformat/vim-autoformat'
Plug 'voldikss/vim-floaterm'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'vim-syntastic/syntastic'

" IDE Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Frontend Development
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/tagalong.vim'

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


" Autoformatters
let g:formatterpath = ['/home/x-candy6/.nix-profile/bin/nixfmt']
autocmd BufWritePre *.nix :AutoFormat

augroup python_autocommands
	autocmd!
	autocmd BufWritePost *.py execute ':!ruff format ' . shellescape(@%)
augroup END

set clipboard=unnamedplus  
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "*Y
noremap <Leader>P "*P

set backspace=indent,eol,start 


" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

"map <C-m> :tabmove    
"map <C-w> :tabclose<CR>
"map <C-t> :tabnew<CR>

" Window resize -  
nnoremap + :res +5<CR>
nnoremap _ :res -5<CR>
nnoremap = :vertical resize +5<CR>
nnoremap - :vertical resize -5<CR>


" COC Settings

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()


""" FrontEnd Development
"""" Tagalong - change opening tag and closing at the same time
let g:tagalong_verbose = 1

"""" Emmet 
let g:user_emmet_install_global = 1
"autocmd FileType html,css EmmetInstall
"let g:user_emmet_leader_key='<C-0>'


command! FormatJson execute '%!jq .'
