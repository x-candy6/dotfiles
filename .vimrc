"vim7+ default plugin-manager
packloadall

" VUNDLE BEGIN
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own
" plugin);REMOVED BECAUSE OF ERROR
"Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'tibabit/vim-templates'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'vim-scripts/c.vim'
Plugin 'voldikss/vim-floaterm'
Plugin 'alvan/vim-closetag'
Plugin 'preservim/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'yaegassy/coc-pydocstring', {'do': 'yarn install --frozen-lockfile'}
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plugin 'tell-k/vim-autopep8'
"used for java formatting
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
" End java formatting
Plugin 'google/vim-glaive'
Plugin 'prettier/vim-prettier'
Plugin 'mattn/emmet-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'mattn/webapi-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'mattn/calendar-vim'
Plugin 'pwittchen/tmux-plugin-spotify'
Plugin 'vim-autoformat/vim-autoformat'
Plugin 'junegunn/fzf.vim'
Plugin 'mhinz/vim-startify'
Plugin 'ryanoasis/vim-devicons'
" All of your Plugins must be added before the following line
call vundle#end()            " required

"java formatting
call glaive#Install()

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"VUNDLE END

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
        syntax on
endif

"Color Scheme https://github.com/flazz/vim-colorschemes
"To browse color schemes: :source
"/home/andy/.vim/Bundle/setcolors/plugin/setcolors.vim
"F8 to next, Shift F8 for prev, Alt F8 for random
"
"freya desert256 darkblue gothic black_angus relaxedgreen darkblack lettuce
"lilydjwg_dark wwdc16 trogdor turbo tutticolori twilight understated 0x7A69_dark 
"jhdark jiks DevC++ Dim moria mrkn256 mrpink nightshimmer earendel quantum
"radicalgoodspeed rootwater sadek sandydune scooby sean seattle seoul seoul256
"shadesofamber warriorsaway watermark welpe zenburn zmrok zsnake sweetcandy
"Tomorrow-Night-Bright Tomorrow-Night-Eighties Tomorrow-Night VIvid billw
"kkruby candycode clue cobalt2 cobalt crunchbang cthulhian deepsea  derefined
"dw_purple dw_yellow dzo 

colorscheme mrkn256 
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
"Atelier_SulphurpoolDark   

"Attempt to use 256 color version as close as possible
"let g:rehash256 = 1
"
"" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd            " Show (partial) command in status line.
"set showmatch          " Show matching brackets.
"set ignorecase         " Do case insensitive matching
"set smartcase          " Do smart case matching
"set incsearch          " Incremental search
"set autowrite          " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a            " Enable mouse usage (all modes)

""""""PASTE FROM +y clipboard ; INSTALL vim-gtk3 from package-manager
"set clipboard=unnamedplus For Linux
" for macs : unnamed
set clipboard=unnamed
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
""turn off diagnostics
set signcolumn=no
"switch tabs
"":map <F7> :tabp <CR>
"":map <F8> :tabn <CR>
"":map <F10> :tabclose <CR>
"""New Tab ; REMOVED AND REPLACED WITH RANGER NEW TAB
":map <F9> :tabe ../

"allow mouse scrolling
set mouse=a

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
        source /etc/vim/vimrc.local
endif
"" Source a global configuration file if available
"if filereadable("/home/andy/.vimrc")
"        source /home/andy/.vimrc
"endif
"vim  terminal in split window
"map <Leader>t :term ++close<cr>

set number
"set relativenumber
syntax enable
"set autoindent
set expandtab
set tabstop=2
set cursorline
"set ve+=onemore
"set cursor type https://www.youtube.com/watch?v=FcQjTXLrVUU / https://vim.fandom.com/wiki/Configuring_the_cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


"nnoremap <F1> <C-w>h
"nnoremap <F2> <C-w>j
"nnoremap <F3> <C-w>k
"nnoremap <F4> <C-w>l

set showmatch
set encoding=UTF-8
" dangerous hotfix - prevent swapfiles
set noswapfile
"This takes out <:> so closetag works
au FileType html let b:delimitMate_matchpairs = "(:),[:],{:}"

"Startify Options
"Attempt to center
"let g:startify_center = 75 

"Java
augroup autoformat_settings
  autocmd FileType java AutoFormatBuffer google-java-format
augroup END
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /Users/andy/.config/google-java-format-1.15.0-all-deps.jar"

" C/C++
autocmd FileType c AutoFormatBuffer  clang-format


" <C-K> Comments
autocmd FileType java nmap <C-K>  i/***/<Left><Left>

"Python-Keybind
autocmd FileType python xnoremap <C-k> I#<ESC>

autocmd FileType html,htmldjango nmap <C-k> i<!----><ESC><Right>x<Left><Left>i


" Folding
"za, zo, left, shift+j 

autocmd FileType java setlocal shiftwidth=4 softtabstop=4 expandtab foldmethod=syntax 

"          ______  ______   __    __   ______  __       ______   ______  ______   ______
"        /\__  _\/\  ___\ /\ "-./  \ /\  == \/\ \     /\  __ \ /\__  _\/\  ___\ /\  ___\
"        \/_/\ \/\ \  __\ \ \ \-./\ \\ \  _-/\ \ \____\ \  __ \\/_/\ \/\ \  __\ \ \___  \
"           \ \_\ \ \_____\\ \_\ \ \_\\ \_\   \ \_____\\ \_\ \_\  \ \_\ \ \_____\\/\_____\
"            \/_/  \/_____/ \/_/  \/_/ \/_/    \/_____/ \/_/\/_/   \/_/  \/_____/ \/_____/
"                            <Templates, templates, Template, template>
nmap <leader>t :TemplateInit 
nmap <leader>ti :! ls -a $HOME/.vim/templates/ <CR>

" Placeholder Values
let g:tmpl_author_name = 'AndrewC'
let g:tmpl_author_email = ''
let g:tmpl_author_hostname = ''
let g:tmpl_license_file = ''
let g:tmpl_copyright = ''
let g:tmpl_project = ''
let g:tmpl_company = ''


"######  ##  ## ##   ##  #####  #####   ######  
"##   ## ##  ## ### ### ##   ## ##  ##  ##      
"##   ##  #  #  ####### ##   ## ##   ## ##      
"##   ##  ####  ####### ##   ## ##   ## #####   
"######    ##   ## # ## ##   ## ##   ## ##      
"##        ##   ##   ## ##   ## ##  ##  ##      
"##        ##   ##   ##  #####  #####   ######  
"pymode                                               
"PYTHON CONFIGS
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_doc = 1
let g:pymode_options = 1
let g:pymode_doc_bind = 'K'
let g:pymode_run = 1
let g:pymode_options_colorcolumn = 0
let g:pymode_indent = 1
let g:pymode_indent_hanging_width = &shiftwidth
let g:pymode_indent_hanging_width = 4
let g:pymode_folding = 0
let g:pymode_virtualenv = 1
let g:pymode_run_bind = '<leader>r'

"Use F4 to run python script
"autocmd FileType python map <buffer> <F4> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"autocmd FileType python imap <buffer> <F4> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


"Pymode Code-checking
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
"Check code on save
let g:pymode_lint_unmodified = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
"
"Autopep8 Configurations
"autocmd FileType python noremap <buffer> <F5> :Autopep8<CR>
let g:autopep8_on_save = 1
"Disables the diff window that pops up after every cycle of Autopep8()
let g:autopep8_disable_show_diff=1


"PRETTIER CONFIG
" For html and css formatting using prettier
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.htmldjango,*.html, *.handlebars Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Max line length that prettier will wrap on: a number or 'auto' (use
" textwidth).
" default: 'auto'
let g:prettier#config#print_width = '120'

" number of spaces per indentation level: a number or 'auto' (use
" softtabstop)
" default: 'auto'
let g:prettier#config#tab_width = '4'

" use tabs instead of spaces: true, false, or auto (use the expandtab setting).
" default: 'auto'
let g:prettier#config#use_tabs = 'false'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty string
" (let prettier choose).
" default: ''
let g:prettier#config#parser = ''

" cli-override|file-override|prefer-file
" default: 'file-override'
let g:prettier#config#config_precedence = 'file-override'

" always|never|preserve
" default: 'preserve'
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
" default: 'css'
let g:prettier#config#html_whitespace_sensitivity = 'css'

let g:prettier#config#single_attribute_per_line = 'false'

" false|true
" default: 'false'
let g:prettier#config#require_pragma = 'false'

" Define the flavor of line endings
" lf|crlf|cr|all
" defaut: 'lf'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')


" enable all Python syntax highlighting features
"let python_highlight_all = 1

"au BufNewFile,BufRead *.py
"    \ set tabstop=4       |
"    \ set softtabstop=4   |
"    \ set shiftwidth=4    |
"    \ set textwidth=79    |
"    \ set expandtab       |
"    \ set autoindent      |
"    \ set fileformat=unix |



" For Emmett
let g:user_emmet_install_global = 0
autocmd FileType html,css,djt,htmldjango EmmetInstall
"Custom emmet snippets; first instapp webapi-vim, then create .config/emmet-vim/snippets_custom.json ; DISABLED UNTIL I ACTUALLY START USING IT
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('/Users/andy/.config/emmet-vim/snippets.json')), "\n"))


" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
                        \ 'typescript.tsx': 'jsxRegion,tsxRegion',
                        \ 'javascript.jsx': 'jsxRegion',
                        \ 'typescriptreact': 'jsxRegion,tsxRegion',
                        \ 'javascriptreact': 'jsxRegion',
                        \ }

" Shortcut for closing tags, default is '>'
"
"let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


"vim-templates
let g:tmpl_auto_initialize=0
let g:tmpl_search_paths = ['/Users/andy/.vim/templates']

" ### ###    ##    ##   # ####    ##      ######  #####     ##   ######   ####   
" ##   ##  #####  #### ## #  ###  ###    ####    ###  ##  #####  ###  ## ### ##  
" ##   ##  ## ### ####### ##  ### ###    ###     ##   ##  ## ### ##   ## ##      
" ####### ##   ## ## #### ##  ###  ##     # ##   ## ###  ##   ## ##  ##   ####   
" ##   ## ####### ##  ### ##  ###  ##     ##     ##   ## ####### #####       ##  
" ##   ## ##  ##  ##   ##  # ###   ## ### ###     # #### ##  ##   ## ## ### ###  
"  #    # #   #    #   #  #####   #######  ##### ######  #   #    ##  ## #####   
"  Now you get a set of convenient abbreviations. Underscore _ indicates where your cursor ends up after typing an abbreviation:
"   {{ => {{_}}
"   {{{ => {{{_}}}
"   {{! => {{!_}}
"   {{> => {{>_}}
"   {{< => {{<_}}
"   {{# produces
"   {{# _}}
"   {{/}}

let g:mustache_abbreviations = 1



" LightLine Settings
set laststatus=2

" Lightline theme
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }
" vim-autoformat; uses js-beautify as formatter, and /home/user/.jsbeautifyrc
" as a config file
"noremap <F3> :Autoformat<CR>
"let g:formatters_python = ['autopep8']
"au BufWrite * :Autoformat

"
" NerdTree
" Start NerdTree at startup
" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree | wincmd p

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


""C-ww moves back to the file
"" Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
"" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
"" enable line numbers
"let NERDTreeShowLineNumbers=1

"" Using Vim's folding method for code-folding
"set foldmethod=syntax
"set foldcolumn=1

"Spotify-Vim

"#################
"###MAC OPTIONS###
"#################
set backspace=indent,eol,start


"Ranger Remapping
"map <C-n> :RangerCurrentDirectory

"let g:floaterm_keymap_new = '<S-F5>'
"let g:floaterm_keymap_next = '<S-F8>'
"let g:floaterm_keymap_toggle = '<S-F6>'
"let g:floaterm_keymap_kill = '<S-F7>'

let g:floaterm_keymap_new =    '<F5>'
let g:floaterm_keymap_toggle = '<F6>'
let g:floaterm_keymap_kill =   '<F7>'
let g:floaterm_keymap_next =   '<F8>'

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
