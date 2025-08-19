return {
	runtime = {
		version = "LuaJIT",
	},
	workspace = {
		-- checkThirdParty = true,
		library = vim.api.nvim_get_runtime_file("", true),
	},
	diagnostics = {
		globals = { "vim" },
	},
}
