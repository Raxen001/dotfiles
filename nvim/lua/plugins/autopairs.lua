return {
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
		ts_config = {
			lua = { "string" }, -- it will not add a pair on that tree-sitter node
			javascript = { "template_string" },
			-- java = false, -- don't check tree-sitter on java
		},
	},
}
