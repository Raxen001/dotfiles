return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			"cssls",
			"vtsls",
			"bashls",
			"ts_ls",
			"eslint",
			"rust_analyzer",
			-- "gopls", -- installed as system
			"pylsp",
			"lua_ls",
			"ruff",
			"phpactor",
			"ts_ls",
			"markdown_oxide",
			"buf_ls",
			-- formatters
			"stylua",
		},
	},
}
