local opts = { noremap = true, silent = true }

-- Shorten keymap nvim call
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes:
--   Normal       = "n"
--   Insert       = "i"
--   Visual       = "v"
--   Visual_Block = "x"
--   Terminal     = "t"
--   Command      = "c"

keymap("n", "<leader>v", ":Vex<CR>", opts)
keymap("n", "<leader>ff", "<CMD>Telescope find_files<CR>", opts)
keymap("n", "<leader>rg", "<CMD>Telescope live_grep<CR>", opts)
keymap("n", "<leader>p", "<CMD>lua vim.lsp.buf.formatting_sync()<CR>", opts)

keymap("n", "<leader>t",  ":NvimTreeToggle <CR>", {noremap=true})

keymap("n", "<M-K>", ":resize -2<CR>", {noremap=true})
keymap("n", "<M-J>",  ":resize +2<CR>", {noremap=true})
keymap("n", "<M-H>",  ":vertical resize -2<CR>", {noremap=true})
keymap("n", "<M-L>",  ":vertical resize +2<CR>", {noremap=true})

keymap("n", "<M-h>",  "<C-w>h", {noremap=true})
keymap("n", "<M-j>",  "<C-w>j", {noremap=true})
keymap("n", "<M-k>",  "<C-w>k", {noremap=true})
keymap("n", "<M-l>",  "<C-w>l", {noremap=true})

-- try these out in normal mode!
-- make sure you have fzf and ripgrep installed.
