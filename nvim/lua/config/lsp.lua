vim.diagnostic.config({
	virtual_text = true, -- in same line
	-- virtual_lines = true, -- in seperate line
	virtual_lines = {
		current_line = true,
	}, -- in seperate line
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
    "markdown_oxide",
}
vim.lsp.enable(enabled_lsp)

-- override config
vim.lsp.config("phpactor", {
	root_dir = nil,
	root_markers = { ".phpactor.json", ".phpactor.yml" },
	workspace_required = true,
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
