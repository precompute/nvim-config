call plug#begin()
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'itchyny/lightline.vim'
" Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'mswift42/vim-themes'
Plug 'mkarmona/colorsbox'
Plug 'nightsense/vimspectr'
Plug 'scrooloose/nerdtree' , { 'on':  'NERDTreeToggle' }
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-commentary'
Plug 'eagletmt/ghcmod-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/csapprox'
" Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
"Plug 'eagletmt/neco-ghc'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
"Plug 'Shougo/denite.nvim'
Plug 'thinca/vim-ref'
Plug 'aerosol/vim-compot'
" Plug 'kovisoft/slimv' "doesn't let me delete brackets!! turns out this isn't even the culprit
" Plug 'xolox/vim-lua-ftplugin'
" Plug 'xolox/vim-lua-inspect'
" Plug 'xolox/vim-misc' HWy do I even have this installed?
Plug 'mbbill/undotree'
"Plug 'itchyny/vim-haskell-indent'
"Plug 'dag/vim2hs'
Plug 'neovimhaskell/haskell-vim'
Plug 'junegunn/fzf', { 'commit': 'b0673c35634a04687237cd57ef4ab2fafeeb620a', 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" Plug 'bhurlow/vim-parinfer' maybe?
Plug 'nelstrom/vim-markdown-folding'
" Plug 'tpope/vim-markdown' says it is distributed with vim itself
" Plug 'gabrielelana/vim-markdown'
" Plug 'jaxbot/browserlink.vim'
" Plug 'mattn/emmet-vim'
" Plug 'janlazo/vim-bang-terminal'
" Plug 'turbio/bracey.vim'
" Plug 'airblade/vim-gitgutter'
"Plug 'bling/vim-bufferline'
Plug 'godlygeek/tabular'
Plug 'lervag/vimtex'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tommcdo/vim-lion'
Plug 'rhysd/clever-f.vim'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'jceb/vim-orgmode'
" Plug 'ctrlpvim/ctrlp.vim' Apparently fzf is better??
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'chriskempson/base16-vim'
Plug 'arp242/confirm_quit.vim'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-vinegar' "netrw enhancements
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'catppuccin/nvim'
Plug 'mrjones2014/lighthaus.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim', {'do': 'setup'}
" require('gitsigns').setup()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
call plug#end()

"<F2> left
"<F3> new
"<F4> right
"<F5> filetree
"<F6> fzf
"<F7> goyo 
"<F8> startify
"<F9> w
"<F10> q
"<F12> x

" set statusline+=%{get(b:,'gitsigns_status','')}
"<F9> undotree

set laststatus=2
set nosmd   " short for 'showmode'
"set noru    " short for 'ruler'
set number
set ai
set ttyfast
"colo fu 
" if has("gui_running")
"     color gruvbox8_hard
" else
    " color base16-default-dark
"     " color gruvbox8_hard
" endif
" doesn't really work ^
color tokyonight "lighthaus_dark tokyonight base16-black-metal-khold tempus_tempest base16-default-dark peaksea preto tender fu gruvbox8_hard tempus_summer
"maui cool phoenix darkZ OceanicNextloogica gruvbox cottonmouse minimalist moff pomelo marklar marussian neonbrain blaquemagick lopuch miko miromiro codeburn relaxedgreen fu preto sky fokus
"colorscheme Chasing_Logic
""fx
let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"|":""}',
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'active': {
      \   'left': [ ['mode',
      \              'paste',
      \              'lineinfo',
      \              'readonly',
      \              'filename',
      \              'modified',
      \              'percent',
      \ ],[
      \              'filetype',
      \              'gitbranch',
      \              'fileformat',
      \              'wordcount',
      \              'fileencoding'
      \           ] ],
      \   'right': [],
      \ },
      \ 'component_function': {
      \   'wordcount': 'WordCount',
      \   'gitbranch': 'FugitiveHead'
      \ }
      \ }

      " \              'wordcount',
      " \   'wordcount': 'WordCount',
      " \   'left': [ ['mode', 'paste', 'lineinfo','gitbranch', 'readonly', 'filename', 'modified' ], [ 'percent', 'wordcount' ], [ 'fileformat', 'fileencoding', 'filetype' ] ],
      " \   'right': [ [ 'lineinfo' ], [ 'percent', 'wordcount' ], [ 'fileformat', 'fileencoding', 'filetype' ] ],

      " \   'right': [ [ 'lineinfo' ], [ 'percent', 'wordcount' ], [ 'fileformat', 'fileencoding', 'filetype' ] ],
      "
      " let g:lightline = {
      " \ 'colorscheme': 'gruvbox',
      " \ 'active': {
      " \   'left': [ [ 'mode', 'paste' ],
      " \             [ 'gitbranch', 'readonly', 'filename', 'modified' ],
      " \             [ 'lineinfo' ], [ 'percent', 'wordcount' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      " \ },
      " \ 'component_function': {
      " \   'wordcount': 'WordCount',
      " \   'gitbranch': 'FugitiveHead'
      " \ },
      " \ }
let g:lightline.mode_map = {
       \ 'n' : 'N',
       \ 'i' : 'I',
       \ 'R' : 'R',
       \ 'v' : 'V',
       \ 'V' : 'V-L',
       \ 'c' : 'C',
       \ "\<C-v>" : 'V-B',
       \ 's' : 'S',
       \ 'S' : 'S-L',
       \ "\<C-s>" : 'S-B',
       \ '?' : ' ' }

set hidden
set matchpairs+=<:>
" set guifont=Fira\ Code:h16
" ! to suppress qt-specific warnings
" :set guifont=Inconsolata\ LGC:h11
" :set guifont=Pragmata\ Pro\ Mono:h12
":set guifont=lemon\ 7
" set guioptions-=m 
" set guioptions-=T
" set guioptions-=r
set guioptions=Aaeghikmr
"set tabstop=8 
set softtabstop=0 
"set expandtab 
set shiftwidth=4 
set smarttab
set autoindent
set copyindent
set cindent
set shiftround
" set foldmethod=syntax
"map <Super_L> <Esc>
"nnoremap <Super_L> <Esc>
"inoremap <Super_L> <Esc>
" inoremap >>> ->
" inoremap <<< <-
imap kj <Esc>
" noremap <Alt>  <Esc>
"nnoremap <Alt_R> <Esc>
" inoremap jj <Esc>
" inoremap <ALT> <Esc>
" set cursorline

syntax on
filetype plugin indent on

set nocompatible
set number
" set relativenumber
set showmode
set title
"set tw=0
"set fo=cqt
"set wm=5
set spelllang=en_us
set wrap linebreak nolist
set smartcase
set smarttab
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
set completeopt=menuone,menu,longest
set nomodeline
set vb

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest
set clipboard=unnamedplus
set t_Co=256

set timeout timeoutlen=200000

set nocursorline
set nocursorcolumn
" set scrolljump=5
" set scrolljump=20
" set lazyredraw
" set synmaxcol=180 
set cmdheight=1

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
let g:startify_custom_header = []
let g:deoplete#enable_at_startup = 1
let g:startify_files_number=1000
" let g:startify_files_number=100
"cntl-n
"exit if everything else is
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"open on directory
" Highlight currently open buffer in NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall

highlight Scrollbar_Clear ctermfg=green ctermbg=black guifg=green guibg=black cterm=none
highlight Scrollbar_Thumb ctermfg=darkgreen ctermbg=darkgreen guifg=darkgreen guibg=darkgreen cterm=reverse

let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_minlines = 100000

let g:goyo_linenr=1
" let g:org_heading_shade_leading_stars = 1 don't like the way this looks
let g:org_indent = 1

" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'c'

function! Coyo()
  :Goyo 40%x90%
  noremap <expr> j v:count ? 'j' : 'gj'
  noremap <expr> k v:count ? 'k' : 'gk'
  inoremap <A-j> <C-o>gj
  inoremap <A-k> <C-o>gk
endfunction
com! PP call Coyo()

" if has("gui_running")
"   if has("gui_mac") || has("gui_macvim")
"     set guifont=Menlo:h12
"     set transparency=7
"   endif
" else
"   let g:CSApprox_loaded = 1
" endif

let g:haskell_conceal_wide = 0
let g:haskell_multiline_strings = 1
let g:haskellmode_completion_ghc = 0
let g:necoghc_enable_detailed_browse = 1
autocmd Filetype haskell setlocal omnifunc=necoghc#omnifunc
filetype plugin indent on

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_indent_disable = 1
"et g:haskell_classic_highlighting = 1
"et g:haskell_indent_if = 3
"et g:haskell_indent_case = 2
"et g:haskell_indent_let = 4
"et g:haskell_indent_where = 6
"et g:haskell_indent_before_where = 2
"et g:haskell_indent_after_bare_where = 2
"et g:haskell_indent_do = 3
"et g:haskell_indent_in = 3
"et g:haskell_indent_guard = 5

nnoremap <F2> :tabprevious<CR>
nnoremap <F3> :tabnew<CR>
nnoremap <F4> :tabnext<CR>
inoremap <F2> <Esc>:tabprevious<CR>
inoremap <F3> <Esc>:tabnew<CR>
inoremap <F4> <Esc>:tabnext<CR>
"inoremap <C-m> <Esc>:tabprevious<CR>i
"inoremap <C-l> <Esc>:tabnext<CR>i
"inoremap <C-t> <Esc>:tabnew<CR>
" nnoremap <F9> :UndotreeToggle<cr>


nnoremap <F14> :bp<CR>
nnoremap <F16> :bn<CR>
inoremap <F14> <Esc>:bp<CR>
inoremap <F16> <Esc>:bn<CR>

nnoremap <F5> :NERDTreeToggle<CR>
inoremap <F5> <Esc>:NERDTreeToggle<CR>

nnoremap <F6> :Files<CR>
inoremap <F6> <Esc>:Files<CR>

" nnoremap <F7> :Coyo<CR>
" nnoremap <F7> :Goyo 90%x90%<CR>
nnoremap <F7> :Goyo 40%x100%<CR>
nnoremap <F8> :Startify<CR>
" inoremap <F7> <Esc>:Coyo<CR>
" inoremap <F7> <Esc>:Goyo 90%x90%<CR>
inoremap <F7> :Goyo 40%x100%<CR>
inoremap <F8> <Esc>:Startify<CR>

nnoremap <F9> :w<CR>
inoremap <F9> <Esc>:w<CR>a
nnoremap <F10> :q
inoremap <F10> <Esc>:q
nnoremap <F12> :x<CR>
inoremap <F12> <Esc>:x<CR>a

" let g:fzf_layout = { 'left': '~25%' }
let g:fzf_layout = { 'window': {
            \ 'width': 0.9,
            \ 'height': 0.7,
            \ 'highlight': 'Comment',
            \ 'rounded': v:false } }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

function! ProseMode()
"  call goyo#execute(0, [])
"  :Goyo 90%x90%
  setlocal spell noci nosi noai nolist noshowmode noshowcmd
  setlocal complete+=s
  setlocal formatoptions=1
  setlocal noexpandtab
  noremap <expr> j v:count ? 'j' : 'gj'
  noremap <expr> k v:count ? 'k' : 'gk'
  set formatprg=par
  set nonu
  setlocal wrap
  setlocal linebreak
  " colo fx
  " Goyo 90%x90%
  Goyo72x25
  setf markdown
  "set bg=light
  "if !has('gui_running')
    "let g:solarized_termcolors=256
  "endif
endfunction
" com! PP call ProseMode()
":Goyo 90%x90%
"nnoremap <F7> :ProseMode<CR>
"let g:seoul256_background = 256
"colo seoul256
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_filetype_hi_groups = 0
let g:gruvbox_bold = 1
let g:gruvbox_italics = 1
let g:gruvbox_italicize_strings = 1
let g:gruvbox_plugin_hi_groups = 1
let g:gruvbox_transp_bg = 1

function! TextFileInit()
  setlocal spell
  setf markdown
  " inoremap <expr> j v:count ? 'j' : 'gj'
  " inoremap <expr> k v:count ? 'k' : 'gk'
  " nnoremap <expr> j v:count ? 'j' : 'gj'
  " nnoremap <expr> k v:count ? 'k' : 'gk'
  :iab <expr> iii strftime("%y%m%d %H:%M:%S %a")
  nnoremap <buffer> k gk
  nnoremap <buffer> j gj
  noremap <buffer> <Up> gk
  noremap <buffer> <Down> gj
  inoremap <buffer> <Up> <Esc>gkli
  inoremap <buffer> <Down> <Esc>gjli
  " inoremap <Up> <Esc>:gj<CR>i
  " inoremap <Down> <Esc>:gk<CR>i
endfunction

function! MarkdownInit()
  setlocal spell
  setf markdown
  " inoremap <expr> j v:count ? 'j' : 'gj'
  " inoremap <expr> k v:count ? 'k' : 'gk'
  " nnoremap <expr> j v:count ? 'j' : 'gj'
  " nnoremap <expr> k v:count ? 'k' : 'gk'
  :ab nl <CR><CR>---<CR>
  :ab nll <CR>---<CR>
  nnoremap <buffer> k gk
  nnoremap <buffer> j gj
  noremap <buffer> <Up> gk
  noremap <buffer> <Down> gj
  inoremap <buffer> <Up> <Esc>gkli
  inoremap <buffer> <Down> <Esc>gjli
  " inoremap <Up> <Esc>:gj<CR>i
  " inoremap <Down> <Esc>:gk<CR>i
endfunction

:autocmd BufRead,BufNewFile /home/sys2/00/0A/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/00/0C/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/00/0L/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/00/0F/*/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/00/0P/*/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/45/bloag/posts/* call TextFileInit()
:autocmd BufRead,BufNewFile /home/sys2/temp/nblake/vco/* call MarkdownInit()
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

"noremap <expr> j v:count ? 'j' : 'gj'
"noremap <expr> k v:count ? 'k' : 'gk'

let mapleader=" "
nnoremap <silent> zx              :call confirm_quit#confirm(0, 'last')<CR>
" close, used to be :q, now thiss for confirmation when quitting.

nnoremap <silent> zs              :w<CR>
" save

nnoremap <silent> <Leader>ff     :e
" Files

nnoremap <silent> <Leader><Space> :Files <C-r>=expand("%:h")<CR>/<CR>
" Files in current directory

nnoremap <silent> <Leader>bb     :Buffers<CR>
" Buffers

nnoremap <silent> <Leader>fr     :History<CR>
" File history

nnoremap <silent> <Leader>ss     :BLines<CR>
" Search in current buffer

nnoremap <silent> <Leader>sc     :Lines<CR>
" Search in buffers

nnoremap <silent> <Leader>sp     :Rg<CR>
" Search text in files in current directory

nnoremap <silent> <Leader>gg     :G<CR>
" Git status

nnoremap <silent> <Leader>gs     :GFiles<CR>
" Git files

nnoremap <silent> <Leader>gS     :GFiles?<CR>
" Modified git files

nnoremap <silent> <Leader>gll    :Commits<CR>
" Project's commits

nnoremap <silent> <Leader>gLl    :BCommits<CR>
" Current file's commits

nnoremap <silent> <Leader>hbb    :Maps<CR>
" Bindings

nnoremap <silent> <Leader>x    :Commands<CR>
" M-x

nnoremap <silent> <Leader>n    :noh<CR>

let g:word_count="<unknown>"
function WordCount()
    return g:word_count
endfunction
function UpdateWordCount()
    let lnum = 1
    let n = 0
    while lnum <= line('$')
        let n = n + len(split(getline(lnum)))
        let lnum = lnum + 1
    endwhile
    let g:word_count = n
endfunction
" Update the count when cursor is idle in command or insert mode.
" Update when idle for 1000 msec (default is 4000 msec).
set updatetime=1000
augroup WordCounter
    au! CursorHold,CursorHoldI * call UpdateWordCount()
augroup END
let g:vimtex_compiler_progname = 'nvr'

function! CCC()
  Goyo 120x90
endfunction
com! CC call CCC()

let g:neovide_cursor_vfx_mode = "torpedo"
" Railgun Torpedo PixieDust
let g:netrw_banner = 0
let g:sneak#label = 1
let NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set t_ZH=^[[3m
set t_ZR=^[[23m

