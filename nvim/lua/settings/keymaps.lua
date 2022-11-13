local opts = { noremap = true, silent = true }
--keymap("n", "", "", opts)

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

keymap("n", "<leader>ff", "<CMD>Telescope find_files<CR>", opts)

keymap("n", "<leader>g", "<CMD>Telescope live_grep<CR>", opts)

keymap("n", "<leader>t",  ":NvimTreeToggle <CR>", {noremap=true})               -- nvim tree
keymap("n", "<leader>p", "<CMD>lua vim.lsp.buf.format()<CR>", opts)             --formating

-- window management
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


-- debugger dap
keymap("n","<F1>", ":lua require'dap'.continue()<CR>", opts)
keymap("n","<F2>", ":lua require'dap'.step_over()<CR>", opts)
keymap("n","<F3>", ":lua require'dap'.step_into()<CR>", opts)
keymap("n","<F4>", ":lua require'dap'.step_out()<CR>", opts)
keymap("n","<Leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n","<Leader>dB", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
keymap("n","<Leader>dp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
keymap("n","<Leader>dr", ":lua require'dap'.repl.open()<CR>", opts)
keymap("n","<Leader>dl", ":lua require'dap'.run_last()<CR>", opts)

keymap("n", "<leader>du", ":lua require'dapui'.toggle()<CR>", opts)
