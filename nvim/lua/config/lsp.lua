vim.lsp.enable("lua_ls")
vim.lsp.enable("gopls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("bashls")
vim.lsp.enable("intelephense")
-- vim.lsp.enable("phpactor")

vim.diagnostic.config({
	-- virtual_text = true, -- in same line
	virtual_lines = true, -- in seperate line
})
