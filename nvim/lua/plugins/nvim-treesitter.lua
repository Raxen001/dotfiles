return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	brach = "main",
    commit = "90cd6580e720caedacb91fdd587b747a6e77d61f",
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter")
		treesitter.setup({})
		treesitter.install({ "all" })
	end,
}
