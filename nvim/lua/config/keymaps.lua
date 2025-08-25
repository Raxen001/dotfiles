-- define common options
local opts = {
	noremap = true, -- non-recursive
	silent = true, -- do not show message
}

vim.g.mapleader = " "
local set = vim.keymap.set
-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
set("n", "<C-h>", "<C-w>h", opts)
set("n", "<C-j>", "<C-w>j", opts)
set("n", "<C-k>", "<C-w>k", opts)
set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- delta: 2 lines
set("n", "<C-Up>", ":resize -2<CR>", opts)
set("n", "<C-Down>", ":resize +2<CR>", opts)
set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- create vertical split
-- set("n", "<C-\\>", ":vs<CR>", opts)
-- set("n", "<C-]>", ":split<CR>", opts)

-- quickfixlist
set("n", "<leader>co", "<cmd>copen<CR>", opts)
set("n", "<leader>cc", "<cmd>cclose<CR>", opts)
set("n", "<CS-n>", "<cmd>cnext<CR>", opts)
set("n", "<CS-p>", "<cmd>cprevious<CR>", opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
-- super good
set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)

-----------------
--     LSP     --
-----------------
-- set("n", "<leader>lr", vim.lsp.buf.rename, { noremap = true, silent = true, desc = "Rename Variables" })
-- set("n", "<leader>la", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "Code Action (error|warning)" })
-- set("n", "<leader>lc", vim.lsp.buf.references, { noremap = true, silent = true, desc = "References qflist" })
-- set("n", "<leader>li", vim.lsp.buf.implementation, { noremap = true, silent = true, desc = "Implementation qflist" })
-- set("n", "<leader>ls", vim.lsp.buf.document_symbol, { noremap = true, silent = true, desc = "All symbols qflist" })
set("n", "<leader>lD", vim.diagnostic.setqflist, { noremap = true, silent = true, desc = "All Disagnostic qflist" })
set("n", "<leader>ld", vim.diagnostic.setloclist, { noremap = true, silent = true, desc = "Local Disagnostic qflist" })
set("n", "gD", vim.lsp.buf.declaration, opts)
set("n", "gd", vim.lsp.buf.definition, opts)
-- CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()
--
-- search within selection
set("x", "/", "<Esc>/\\%V")
set("x", "?", "<Esc>/\\%V")

-- Open zellij pane on CWD
set("n", "<leader>n", function()
	local action = "new-pane"
    -- local cwd = vim.fn.getcwd()
    local cwd = vim.fn.expand('%:h')
	local direction = "--cwd " .. cwd .. " -- $SHELL"

	vim.fn.system("zellij action " .. action .. " " .. direction)
	if vim.v.shell_error ~= 0 then
		error("zellij executable not found in path")
	end
end, { noremap = true, silent = true, desc = "Zellij open pane in current directory" })
