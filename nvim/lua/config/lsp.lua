vim.diagnostic.config({
	-- virtual_lines = true, -- in seperate line
	virtual_text = true, -- in same line
	virtual_lines = {
		current_line = true,
	},
})

local enabled_lsp = {
	"cssls",
	"vtsls",
	"bashls",
	"ts_ls",
	"eslint",
	"rust_analyzer",
	"gopls",
	"pylsp",
	"lua_ls",
	"ruff",
	"emmylua_ls",
	"phpactor",
}
vim.lsp.enable(enabled_lsp)
