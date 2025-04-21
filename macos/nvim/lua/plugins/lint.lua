return {
	{
		"mfussenegger/nvim-lint",
		event = { "BufReadPre", "BufWritePost" },
		init = function()
			local lint = require("lint")

			vim.api.nvim_create_autocmd(
				{ "TextChanged", "TextChangedI", "BufEnter", "BufReadPre", "BufWritePost", "CursorHold", "CursorHoldI" },
				{
					callback = function()
						lint.try_lint()
					end,
				}
			)
		end,

		config = function()
            local phpcs = require('lint').linters.phpcs
            phpcs.args = {
              '-q',
              -- <- Add a new parameter here
              '--standard=/Users/raxen/Local Sites/movielibrary/app/public/wp-content/phpcs.xml',
              '--report=json',
              '-'
            }
			require("lint").linters_by_ft = {
				php = { "phpcs" },
			}
		end,
	},
}
