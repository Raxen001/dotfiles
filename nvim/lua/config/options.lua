vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.pumheight = 10              -- pumheight sets the number of list in a popup menu i.e: set number of completion objects in nvim-cmp
vim.opt.updatetime = 100	        -- faster completion
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.textwidth = 80
vim.opt.laststatus = 3              -- global status line instead of individual windows
-- vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg=0, bg=LightGrey })
-- split
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
-- color
vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI
--mode
vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- wrap
vim.opt.wrap = false                -- remove line wrapping

-- scrolloff
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- format stuff
vim.opt.fileencoding = "utf-8"      -- the encoding written to a file
vim.opt.conceallevel = 0 	        -- so that `` is visible in markdown files

-- swapfile
vim.opt.swapfile = false            -- disables swap file creation

-- disable netrw at the very start of your init.lua for nvim-tree.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable yanked text highlighting
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'TermCursor', timeout = 150 }
  end,
})
