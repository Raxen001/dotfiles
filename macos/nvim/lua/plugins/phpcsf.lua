return {
	{
		"stevearc/conform.nvim",
		optional = true,
		opts = {
			formatters_by_ft = {
				php = { { "pint", "php_cs_fixer" } },
			},
		},
	},
	{
		"praem90/nvim-phpcsf",
		config = function()
			require("phpcs").setup({
				phpcs = "phpcs",
				phpcbf = "phpcbf",
			})
		end,
	},
}
