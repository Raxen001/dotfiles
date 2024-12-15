return{
    -- keybinding set in keymaps.lua
		"HakonHarnes/img-clip.nvim",
		event = "VeryLazy",
		opts = {
			default = {
				dir_path = "img", -- save dir
				extension = "png",
				file_name = "%Y-%m-%d-%H-%M-%S",
				prompt_for_file_name = true,
			},
		},
		-- keys = {
		-- 	-- suggested keymap
		-- 	{ "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
		-- },
}
