vim.lsp.enable("lua_ls")
vim.lsp.enable("gopls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("bashls")

-- vim.lsp.enable("intelephense")
-- vim.lsp.config("intelephense", {
-- 	root_dir = nil,
-- 	root_markers = { ".phpactor.json", ".phpactor.yml" },
-- 	workspace_required = true,
-- })

vim.lsp.enable("phpactor")
vim.lsp.config("phpactor", {
	root_dir = nil,
	root_markers = { ".phpactor.json", ".phpactor.yml" },
	workspace_required = true,
})

vim.diagnostic.config({
	-- virtual_text = true, -- in same line
	virtual_lines = true, -- in seperate line
})
