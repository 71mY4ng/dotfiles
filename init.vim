" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 

Plug 'NLKNguyen/papercolor-theme'
" Plug 'dracula/vim'

" 补全双引号括号等
Plug 'davidhalter/jedi-vim'       

" random jump
Plug 'easymotion/vim-easymotion'

" multi cursor
Plug 'terryma/vim-multiple-cursors'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '/mnt/c/Users/Tim/AppData/Local/lxss/home/timyang/.fzf', 'do': './install --all' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()



" ------------------[ General ]--------------------" {

" 自适应不同语言的智能缩进
filetype plugin indent on

" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap

" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

let mapleader = ","
let g:mapleader = ","

" }

" -------------------------[Colors and Fonts]------------------- {
    
set laststatus=2
set t_Co=256

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

set background=dark

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }

color PaperColor

" enable transparent background
" hi Normal guibg=NONE ctermbg=NONE

set encoding=utf8


" }

" vim-airline {

let g:airline_powerline_fonts = 1
let g:airline_exclude_preview=1  

" }

" python-mode {
  let g:pymode_python = 'python3'
  let g:pymode_lint_checkers = ['pyflakes']
  let g:pymode_trim_whitespaces = 0
  let g:pymode_options = 0
  let g:pymode_rope = 0

  let g:pymode_indent = 1
  let g:pymode_folding = 0
  let g:pymode_options_colorcolumn = 1
  let g:pymode_breakpoint_bind = '<leader>br'

" }

" NERDCommentor {
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = {
        \ 'javascript': { 'left': '//', 'leftAlt': '/**', 'rightAlt': '*/' },
        \ 'less': { 'left': '/**', 'right': '*/' }
    \ }
let g:NERDAltDelims_javascript = 1
let g:NERDDefaultNesting = 0

"}

" NERDTree {
" nerdtree-git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


map <Leader>n <plug>NERDTreeTabsToggle<CR>

" }


" --------------------------[ Easymotion ]------------------------- {

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)



" --------------------------[ Easymotion ]------------------------- {


let g:multi_cursor_use_default_mapping=0

" Default mapping
" let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_start_word_key      = '<A-n>'
let g:multi_cursor_select_all_word_key = '<C-A-n>'
let g:multi_cursor_start_key           = 'g<A-n>'
let g:multi_cursor_select_all_key      = 'g<C-A-n>'
let g:multi_cursor_next_key            = '<A-n>'
let g:multi_cursor_prev_key            = '<A-p>'
let g:multi_cursor_skip_key            = '<A-x>'

let g:multi_cursor_quit_key            = '<Esc>'


" }


" --------------------------[MY KEY MAPPINGS]------------------------- {

    " 快速在窗口间切换
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l


    " 将当前输入单词转成大写
    imap <c-u> <esc>vbUea

    " 普通模式下将当前单词转换为大写
    nmap <c-u> evbUe
" }
