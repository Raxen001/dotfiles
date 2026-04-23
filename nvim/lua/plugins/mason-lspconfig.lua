return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			"cssls",
			"bashls",
			"ts_ls",
			"eslint",
			"rust_analyzer",
			-- "gopls", -- installed as system
            "basedpyright",
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
