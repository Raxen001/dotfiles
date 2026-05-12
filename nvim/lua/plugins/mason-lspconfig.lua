return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
            -- web dev
			"cssls", -- css
            "html", -- html
			"ts_ls", -- typescript
			"eslint", -- typescript
            -- system language
			"rust_analyzer", -- rust
			"gopls", -- go
            "clangd", -- c, c++
            -- shell
			"bashls", -- bash, zsh
            -- scripting
            "basedpyright", -- python
			"ruff", -- python lint
			"lua_ls", -- lua
			"phpactor", -- php
			"markdown_oxide", -- markdown
			"buf_ls", -- protobuf
		},
	},
}
