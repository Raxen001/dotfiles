set background=light
set notermguicolors

set relativenumber
set number
set splitbelow              "splits window below when creating a new one"
set splitright              "splits window below when creating a new one"
set shiftwidth=4            "when shift >> it shifts by n number"
set tabstop=4               "set tab to n spaces"
set softtabstop=4           "set n spaces as tab"
set expandtab               "expand tabs to spaces usefull for python"
set fileformat=unix         "set our filesystem as unix"
set nuw=1                   "sets numberwidth 
"set colorcolumn=80          "set color column
set mouse=a                 "mouse support"
set laststatus=2            "set statusline"
set shortmess+=c            "gets rid of excess amount of notify"
set scrolloff=4             "scroll offset"
set nowrap                  " warp around the screen to next line when no space left
set autochdir               " change current directory to working file direcotry
set clipboard+=unnamedplus  " yanked text into clipboard
"set timeoutlen=250

set cursorline
set cursorcolumn

set showmatch
set ignorecase              " incase sensitive while searching
set hlsearch                " highlight search
set incsearch               " search as you type

"-------------------------------------------------------------------------------

highlight readonly   ctermfg=red ctermbg=237 cterm=bold,italic
highlight statusleft   ctermfg=darkcyan ctermbg=237 cterm=bold
highlight statuscenter ctermfg=darkblue ctermbg=238 cterm=bold
highlight statusright  ctermfg=black ctermbg=green cterm=bold

set statusline=
set statusline+=%#readonly#
set statusline+=\ %r
set statusline+=%#statusleft#
set statusline+=\ %m
set statusline+=\ %y
set statusline+=%#statuscenter#
set statusline+=\ %f
set statusline+=%= "Right side settings
set statusline+=%#statusright#
set statusline+=\ %c\ \%l:%L
set statusline+=\ %p%%
set statusline+=\ [%n]
"-------------------------------------------------------------------------------
let mapleader = " "

syntax enable

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,noinsert,noselect,longest,preview
if has("autocmd") && exists("+omnifunc")
autocmd Filetype *
        \	if &omnifunc == "" |
        \		setlocal omnifunc=syntaxcomplete#Complete |
        \	endif
endif

"Netrw-------------------------------------------------------------------------
"https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/
nnoremap <leader>t :Lex <CR>
let g:netrw_liststyle = 1
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:new_alto = 0
let g:netrw_preview = 0
" Checks if there is a file open after Vim starts up,
" and if not, open the current working directory in Netrw.
augroup InitNetrw
  autocmd!
  autocmd VimEnter * if expand("%") == "" | edit . | endif
augroup END

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
  nmap <buffer> H u
  nmap <buffer> h -^
  nmap <buffer> l <CR>
  nmap <buffer> . gh
  nmap <buffer> P <C-w>z
endfunction


"-------------------------------------------------------------------------------
"remaps
tnoremap <Esc> <C-\><C-n>

" splits remap
nnoremap <M-K> :resize -2<CR>
nnoremap <M-J> :resize +2<CR>
nnoremap <M-H> :vertical resize -2<CR>
nnoremap <M-L> :vertical resize +2<CR>
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

"-------------------------------------------------------------------------------
"hi CursorLineNr ctermfg=3 ctermbg=239
"hi LineNr       ctermfg=2 ctermbg=234
hi CursorLineNr ctermfg=3 ctermbg=NONE
hi LineNr       ctermfg=2 ctermbg=NONE
hi CursorLine   cterm=NONE ctermbg=237 ctermfg=NONE
hi CursorColumn cterm=NONE ctermbg=237 ctermfg=NONE
hi EndOfBuffer cterm=italic ctermbg=0 ctermfg=2

hi TabLineFill cterm=bold ctermfg=black  ctermbg=black
hi TabLine cterm=bold ctermfg=blue  ctermbg=black
hi TabLineSel cterm=bold,underline ctermfg=Red ctermbg=black

hi Pmenu ctermbg=8 cterm=bold 

" Transparency
hi Normal ctermbg=none ctermfg=NONE 
hi EndOfBuffer guibg=NONE ctermbg=NONE
"-------------------------------------------------------------------------------
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

autocmd BufWritePre,TextChanged,InsertLeave *.ms !groff -ms -T pdf <afile> > a.pdf
"-------------------------------------------------------------------------------
" Autopairs hack
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap {<CR> {<CR>}<Esc>O
"inoremap [ []<Esc>i
"inoremap < <><Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i
"
"-------------------------------------------------------------------------------
