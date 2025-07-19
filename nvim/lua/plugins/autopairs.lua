return {
	{
		-- Autopairs: [], (), "", '', etc
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {
			disable_filetype = { "TelescopePrompt" },
			-- Before        Input         After
			-- ------------------------------------
			-- {|}           <CR>          {
			--                                 |
			--                             }
			-- ------------------------------------
			map_cr = true,
			check_ts = true, -- check if tree-sitter is installed
			-- ts_config = {
			-- lua = { "string" }, -- it will not add a pair on that tree-sitter node
			-- javascript = { "template_string", "string" },
			-- php = { "string" },
			-- java = false, -- don't check tree-sitter on java
			-- },
		},
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup({
				opts = {
					enable_close = true, -- Auto close tags
					enable_rename = true, -- Auto rename pairs of tags
					enable_close_on_slash = true, -- Auto close on trailing </
				},
				-- Also override individual filetype configs, these take priority.
				-- Empty by default, useful if one of the "opts" global settings
				-- doesn't work well in a specific filetype
				-- per_filetype = {
				-- 	["html"] = {
				-- 		enable_close = false,
				-- 	},
				-- },
			})
		end,
	},
}
