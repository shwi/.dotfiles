"======NeoBundle Plugins======
filetype off

if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'mattn/zencoding-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-ref'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/wombat256.vim'
NeoBundle 'vim-scripts/EnhCommentify.vim'
NeoBundle 'vim-scripts/YankRing.vim'
"NeoBundle 'vim-scripts/AutoClose'

filetype plugin on
filetype indent on

"======visualsettings======
"enable syntax
syntax on
"enable 256 colors
set t_Co=256
"colorscheme
colorscheme wombat256
"show number
set number
"show ruler
set ruler
"make backup files in ~/.vimbackup
set backupdir=~/.vimbackup
set noswapfile
"do not wrap when extends
set nowrap
"show arrows when extends
set list
set listchars=tab:¦-,trail:-,eol:↵,extends:»,precedes:«,nbsp:%
"set listchars=eol:↵,extends:»,precedes:«,nbsp:%
"split settings
set splitright
set splitbelow
"reload when file changed
set autoread
"encoding
set encoding=utf-8
"nocompatible with vi
set nocompatible
"sound Off"
set visualbell t_vb=
"do not show splash
set shortmess+=I
"always show statusline
set laststatus=2
"status line
"set statusline=%F%m%r%h%w\%=[Type=%Y]\[Format=%{&ff}]\[Enc=%{&fileencoding}]\[%l/%L=%p]
set statusline=%y%<%F%m%r%h%w%=\[%l/%L]\[%{&ff}]\[%{&fileencoding}]
"tabwidth
"set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"do not wrap
set textwidth=0
set formatoptions=q

"======neocomplcache settings======
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 30
let g:neocomplcache_auto_completion_start_length=2
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

"======neosnippet settings======
if has('conceal')
set conceallevel=2 concealcursor=i
endif

"======vim-quickrun settings======
let g:quickrun_config = {}
" cat or open
let g:quickrun_config['html'] = { 'command' : 'open', 'exec' : '%c %s', 'outputter': 'browser' }
let g:quickrun_config['tex'] = { 'command' : 'platex', 'exec': ['%c %s', 'dvipdfmx %s:r.dvi', 'open %s:r.pdf'] }

"======NERDTree settings======
let g:NERDTreeWinSize=25

"======YankRing settings======
"let g:yankring_history_dir = '~/.vim/'
"let g:yankring_history_file = '.yankring_history'

"======user-defined commands======
command Vimrc :e ~/.vimrc
command Gvimrc :e ~/.gvimrc
command Vimfile :e ~/.vim
command Nt :NERDTree
command Emacs :e ~/.emacs.d/init.el
"======key binds======

"neocomplcache
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><C-Tab> pumvisible() ? "\<Up>" : "\<C-Tab>"

"neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"NERDTree
nmap <silent> <C-e>      :NERDTreeToggle<CR>
vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-e>      :NERDTreeToggle<CR>
imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>
"tab
nnoremap <C-Tab> gt<CR>

"buffer resize
nnoremap <C-W>, :vertical resize-6<CR>
nnoremap <C-W>. :vertical resize+6<CR>

"move cursor when parentheses defined
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap <> <><Left>
"
"======filetype settings======
"autocmd BufRead,BufNewFile *.coffee setfiletype coffee

cd Develop
