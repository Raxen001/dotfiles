return {
	workspace = {
		library = vim.api.nvim_get_runtime_file("", true),
	},
	diagnostics = {
		globals = {
			"vim",
		},
	},
}
