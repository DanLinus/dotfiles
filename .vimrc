"                			╔══════════════════════════════════════════╗
"                			║           Created by D4nL1nus            ║
"                			║                                          ║
"                			║        Email:dandaodesign@gmail.com      ║
"                			║                                          ║
"                			╚══════════════════════════════════════════╝


set encoding=utf-8
execute pathogen#infect()
call pathogen#helptags()
syntax on
syntax enable
set showmode 
set showcmd    "mostra no status os comandos inseridos
set ts=4       "tamanho das tabulações
set ttyfast    "Envia mais caracteres ao terminal, melhorando o redraw de janelas
set mouse=a
set history=1000
set autoread
set number
syntax enable
set wrap
set laststatus=2
set ai
set showmatch
set bg=light
set background=dark
set cul        "abreviação de cursor line (destaca linha atual)
set mousemodel=popup "exibe o conteúdo de folders e sugestões spella
set hls        "destaca com cores os termos procurados
set ignorecase "faz o vim ignorar maiúsculas e minúsculas nas buscas
set smartcase  "Se começar uma busca em maiúsculo ele habilita o case
set ic         "ignora maiúscula e minúsculas em uma busca
set scs        "ao fazer uma busca com maiúsculos considerar case sensitive
set aw         "salvamento automático - veja :help aw
set incsearch  "habilita a busca incremental

"configurando o NerdTree
map <C-n> :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
"autocmd vimenter * NERDTree



let g:airline_theme='murmur'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
colorscheme molokai



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'vim-airline/vim-airline-themes'

Plugin 'sheerun/vim-polyglot'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
call vundle#end()            " required


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
"

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" " Settings for Vim-airline
"let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1

let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long', 'mixed-indent-file' ]
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '*'
let g:airline#extensions#whitespace#max_lines = 20000

let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#format = '%d words'

let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#ctrlp#color_template = 'normal'

let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'

let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_inactive_collapse=1
let g:airline_exclude_preview = 0
let g:airline_skip_empty_sections = 1
let g:airline#extensions#branch#vcs_priority = ['git', 'mercurial']


"Vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = '*'
  else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" Settings for Jedi-vim

let g:jedi#auto_vim_configuration = 0
let g:jedi#use_splits_not_buffers = 'left'
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = '1'

let g:jedi#goto_command = '<leader>d'
let g:jedi#goto_assignments_command = '<leader>g'
let g:jedi#goto_definitions_command = ''
let g:jedi#documentation_command = 'K'
let g:jedi#usages_command = '<leader>n'
let g:jedi#completions_command = '<C-Space>'
let g:jedi#rename_command = '<leader>r'

"#-----------------------| Tmuxline |--------------##
let g:irline#extensions#tmuxline#enabled = 0
let g:tmuxline_theme = 'zenburn'
