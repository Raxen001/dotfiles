return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	brach = "main",
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter")
		treesitter.setup({})
		treesitter.install({ "all" })
	end,
}
