return {
	"mistricky/codesnap.nvim",
	build = "make",
	keys = {
		{
			"<leader>s",
			function()
				require("codesnap").save_snapshot()
			end,
			mode = { "v", "x" },
			desc = "Save selected code snapshot in ~/Pictures/codesnippets/",
		},
	},
	opts = {
		save_path = "~/Pictures/codesnippets",
		has_breadcrumbs = true,
		show_workspace = true,
		has_line_number = true,
		bg_color = "#000000",
		watermark = "",
		bg_x_padding = 40,
		bg_y_padding = 20,
		mac_window_bar = false,
	},
}
