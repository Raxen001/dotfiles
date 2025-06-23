vim.lsp.enable("lua_ls")
vim.lsp.enable('emmylua_ls')
vim.lsp.enable("ruff")
vim.lsp.enable("pylsp")
vim.lsp.enable("gopls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("eslint")
vim.lsp.enable("ts_ls")
vim.lsp.enable("bashls")

vim.diagnostic.config({
	-- virtual_text = true, -- in same line
	virtual_lines = true, -- in seperate line
})
