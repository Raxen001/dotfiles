" needed configs----------------------------------------------
syntax enable
set splitbelow              "splits window below when creating a new one"
set splitright              "splits window below when creating a new one"

set number                  "shows numbers"
set relativenumber          "Set relative number in the line number" 
set showmatch
set fileformat=unix         "set our filesystem as unix"
set nuw=1                   "sets numberwidth "
set colorcolumn=80          "set color column"
set mouse=nvi               "mouse support"
set laststatus=2            "set statusline"
set shortmess+=c            "gets rid of excess amount of notify"
set scrolloff=4             "scroll offset"
set termguicolors 
set background=dark
set nowrap                  " warp around the screen to next line when no space left
set nospell                  " spell check
set autochdir               " change current directory to working file direcotry

set hlsearch                " highlight search
set incsearch               " search as you type
set ignorecase              " incase sensitive while searching

set clipboard+=unnamedplus  " yanked text into clipboard
set timeoutlen=500
set nocompatible            " no compatible with legacy
"let mapleader = "\<Space>"
let mapleader = " "

set expandtab               "expand tabs to spaces usefull for python"
set tabstop=4               "set tab to n spaces"
set softtabstop=4           "set n spaces as tab"
set shiftwidth=4            "when shift >> it shifts by n number"
"===============================================================================

"remaps
tnoremap <Esc> <C-\><C-n>
"nnoremap <C-n> :Lex <CR>

" splits remap
nnoremap <M-K> :resize -2<CR>
nnoremap <M-J> :resize +2<CR>
nnoremap <M-H> :vertical resize -2<CR>
nnoremap <M-L> :vertical resize +2<CR>
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

"===============================================================================

let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material

"status line ------------------------------------------------
" For color :highlight
"
highlight readonly      guifg=#cc241d guibg=#3c3836 gui=bold,italic
highlight statusleft    guifg=#458588 guibg=#3c3836 gui=bold
highlight statuscenter  guifg=#83a598 guibg=#282828 gui=bold
highlight icons         guifg=#d65d0e guibg=#282828 gui=bold
highlight statusright   guifg=#282828 guibg=#689d6a gui=bold

set statusline=
set statusline+=%#readonly#
set statusline+=\ %r
set statusline+=%#statusleft#
set statusline+=\ %m
set statusline+=\ %y
set statusline+=%#statuscenter#
set statusline+=\ %f
set statusline+=%#icons#
set statusline+=\ %{WebDevIconsGetFileTypeSymbol()}
set statusline+=%= "Right side settings
set statusline+=%#statusright#
set statusline+=\ %c\ \%l:%L
set statusline+=\ %p%%
set statusline+=\ [%n]


"highlight cursorline-----------------------------------------
"highlight CursorLineNr cterm=NONE ctermbg=60 ctermfg=3 gui=NONE guibg=NONE guifg=NONE
"highlight CursorLine cterm=NONE gui=NONE guibg=NONE guifg=NONE
"highlight LineNr ctermbg=236 ctermfg=7
"highlight Normal ctermbg=black

"===============================================================================

"omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
"set completeopt=menuone,select,noinsert,preview,,longest
set completeopt=menu,menuone

"===============================================================================
"termnial in nvim
augroup exe_code
    autocmd!
" python
    autocmd Filetype python noremap <buffer> <leader>r
                \ :10sp<CR> :term python3 "%"<CR> :startinsert<CR>
" C
    autocmd Filetype c nnoremap <buffer> <leader>r
                \ :10sp<CR>:term gcc "%" && ./a.out<CR>:startinsert<CR>
" Rust
    autocmd Filetype rust nnoremap <buffer> <leader>r
                \ :10sp<CR>:term cargo run<CR>:startinsert<CR>

augroup END

"===============================================================================
" Transparent BackGround
" Workaround for creating transparent bg
"
autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
        \ |    highlight LineNr     ctermbg=NONE guibg=NONE
        \ |    highlight SignColumn ctermbg=NONE guibg=NONE
        \ |    highlight EndOfBuffer ctermbg=NONE guibg=NONE

"===============================================================================
" NerdTree
nnoremap <leader>t :NERDTreeToggle <CR>
"autocmd VimEnter * NERDTree | wincmd p

"===============================================================================
" Formater
"
"autocmd BufWritePre,TextChanged,InsertLeave *.json,*.py,*.json,*.html,*.css,*.md,*.lua,*.vim Neoformat
"autocmd BufWritePre *.json,*.py,*.json,*.css,*.md,*.lua,*.vim Neoformat

"===============================================================================
" Bracey html live reload
" https://github.com/turbio/bracey.vim/issues/47
" let g:bracey_browser_command="/usr/bin/firefox"

