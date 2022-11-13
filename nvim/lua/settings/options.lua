local g = vim.g
local opt = vim.opt

opt.fileformat="unix"

-- leader to space
g.mapleader = " "

-- No Netrw Banner (remove this line if you're into that sort of thing)
g.netrw_banner = 0

-- Colors
opt.termguicolors = true
opt.background = "dark" -- or "light" for light mode
opt.colorcolumn="80"         -- set color column

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true

-- Line Numbers
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true          -- Set relative number in the line number
opt.ruler = false

-- splits
opt.splitbelow = true
opt.splitright = true

-- search
opt.hlsearch = true --                " highlight search
opt.showmatch = true -- highlight match
opt.incsearch = true --              " search as you type
opt.ignorecase = true --             " incase sensitive while searching

-- status
opt.laststatus=3           -- set statusline"
vim.o.shortmess = vim.o.shortmess .. 'c'--gets rid of excess amount of notify"

--tab
opt.expandtab=true               --"expand tabs to spaces usefull for python"
opt.tabstop=4               --"set tab to n spaces"
opt.softtabstop=4           --"set n spaces as tab"
opt.shiftwidth=4            --"when shift >> it shifts by n number"


g.completeopt="menu,menuone,noselect"
opt.mouse="nvi"            -- mouse support"
opt.scrolloff=4            --scroll offset"
opt.wrap = false -- wrap text if  more than screen width 
opt.spell = false                 -- spell check
opt.autochdir = false              -- change current directory to working file direcotry
opt.clipboard = "unnamedplus"
opt.timeoutlen=500
opt.compatible=false

vim.cmd[[
augroup exe_code
    autocmd!
" python
    autocmd Filetype python noremap <buffer> <leader>r
                \ :10sp<CR>:term python3 "%"<CR>:startinsert<CR>
" C
    autocmd Filetype c nnoremap <buffer> <leader>r
                \ :10sp<CR>:term gcc "%" && ./a.out<CR>:startinsert<CR>
" Rust
    autocmd Filetype rust nnoremap <buffer> <leader>r
                \ :10sp<CR>:term cargo run<CR>:startinsert<CR>
" java
    autocmd Filetype java nnoremap <buffer> <leader>r
                \ :10sp<CR>:term java "%"<CR>:startinsert<CR>
augroup END
"
"autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
"        \ |    highlight LineNr     ctermbg=NONE guibg=NONE
"        \ |    highlight SignColumn ctermbg=NONE guibg=NONE
"        \ |    highlight EndOfBuffer ctermbg=NONE guibg=NONE
"
]]
