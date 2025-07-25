return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		require("treesitter-context").setup({
			enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
			multiwindow = true, -- Enable multiwindow support.
			max_lines = 3, -- How many lines the window should span. Values <= 0 mean no limit.
			min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
			line_numbers = false,
			multiline_threshold = 10, -- Maximum number of lines to show for a single context
			trim_scope = "inner", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
			mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
			-- Separator between context and content. Should be a single character string, like '-'.
			-- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
			separator = "─",
			zindex = 20, -- The Z-index of the context window
			on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
		})
		-- vim.api.nvim_command("hi TreesitterContextBottom gui=underline guisp=Grey")
		-- vim.api.nvim_command("hi TreesitterContextLineNumberBottom gui=underline guisp=Grey")
		-- vim.api.nvim_command("hi TreesitterContextLineNumber guifg=#fff000 guibg=#000000")
	end,
}
