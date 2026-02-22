vim.diagnostic.config({
	virtual_text = true, -- in same line
	-- virtual_lines = true, -- in seperate line
	virtual_lines = {
		current_line = true,
	}, -- in seperate line
})

-- override config
vim.lsp.config("phpactor", {
	root_dir = nil,
	root_markers = { ".phpactor.json", ".phpactor.yml" },
	workspace_required = true,
})

-- mason-lspconfig should autoenable lsp servers
-- local enabled_lsp = {
-- 	"cssls",
-- 	"vtsls",
-- 	"bashls",
-- 	"ts_ls",
-- 	"eslint",
-- 	"rust_analyzer",
-- 	"gopls",
-- 	"pylsp",
-- 	"lua_ls",
-- 	"ruff",
-- 	"phpactor",
--     "eslint_lsp",
--     "ts_ls",
-- 	"markdown_oxide",
--     "buf_ls",
-- }
-- vim.lsp.enable(enabled_lsp)
--
