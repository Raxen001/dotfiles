return {
	"mhartington/formatter.nvim",
	config = function()
		-- Utilities for creating configurations
		local util = require("formatter.util")
		-- keymaps
		vim.keymap.set("n", "<leader>lf", ":Format<cr>", { desc = "Format file" })
		-- vim.keymap.set("n", "<leader>lw", ":FormatWrite<cr>", { desc = "Format file write" })

		-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
		require("formatter").setup({
			-- Enable or disable logging
			logging = true,
			-- Set the log level
			log_level = vim.log.levels.WARN,
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
					function()
						-- if util.get_current_buffer_file_name() == "special.lua" then
						-- 	return nil
						-- end
						return {
							exe = "stylua",
							args = {
								"--search-parent-directories",
								"--stdin-filepath",
								util.escape_path(util.get_current_buffer_file_path()),
								"--",
								"-",
							},
							stdin = true,
						}
					end,
				},
				python = {
					require("formatter.filetypes.python").ruff,
				},
				html = {
					require("formatter.filetypes.html").prettierd,
				},
				css = {
					require("formatter.filetypes.css").prettierd,
				},
                json = {
                    require("formatter.filetypes.json").prettierd,
                },

				-- Use the special "*" filetype for defining formatter configurations on
				-- any filetype
				["*"] = {
					-- "formatter.filetypes.any" defines default configurations for any
					-- filetype
					require("formatter.filetypes.any").remove_trailing_whitespace,
					-- Remove trailing whitespace without 'sed'
					-- require("formatter.filetypes.any").substitute_trailing_whitespace,
				},
			},
		})
	end,
}
