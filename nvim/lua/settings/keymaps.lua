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
keymap("n", "<leader>g", "<CMD>Telescope live_grep<CR>", opts)
keymap("n", "<leader>p", "<CMD>lua vim.lsp.buf.format()<CR>", opts)
keymap("n", "<leader>t",  ":NvimTreeToggle <CR>", {noremap=true})

keymap("n", "<M-K>", ":resize -2<CR>", {noremap=true})
keymap("n", "<M-J>",  ":resize +2<CR>", {noremap=true})
keymap("n", "<M-H>",  ":vertical resize -2<CR>", {noremap=true})
keymap("n", "<M-L>",  ":vertical resize +2<CR>", {noremap=true})

keymap("n", "<M-h>",  "<C-w>h", {noremap=true})
keymap("n", "<M-j>",  "<C-w>j", {noremap=true})
keymap("n", "<M-k>",  "<C-w>k", {noremap=true})
keymap("n", "<M-l>",  "<C-w>l", {noremap=true})


keymap("t",  "<A-h>", "<C-\\><C-N><C-w>h", opts)
keymap("t",  "<A-j>", "<C-\\><C-N><C-w>j", opts)
keymap("t",  "<A-k>", "<C-\\><C-N><C-w>k", opts)
keymap("t",  "<A-l>", "<C-\\><C-N><C-w>l", opts)

keymap("i",  "<A-h>", "<C-\\><C-N><C-w>h", opts)
keymap("i",  "<A-j>", "<C-\\><C-N><C-w>j", opts)
keymap("i",  "<A-k>", "<C-\\><C-N><C-w>k", opts)
keymap("i",  "<A-l>", "<C-\\><C-N><C-w>l", opts)
