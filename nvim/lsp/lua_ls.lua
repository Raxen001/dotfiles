return {
	runtime = {
		version = "LuaJIT",
	},
	workspace = {
		checkThirdParty = false,
		library = vim.api.nvim_get_runtime_file("", true)
	},
}
