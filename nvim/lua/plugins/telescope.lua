return {
	-- keymaps in keymaps.lua
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{
			"nvim-telescope/telescope-live-grep-args.nvim",
			version = "^1.0.0", -- For major updates, this must be adjusted manually.
		},
	},
	config = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")
		local lga_actions = require("telescope-live-grep-args.actions")

		-- keymaps: telescope builtins
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set(
			"n",
			"<leader>fg",
			telescope.extensions.live_grep_args.live_grep_args,
			{ desc = "Telescope live grep" }
		)
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fd", builtin.lsp_document_symbols, { desc = "Telescope document symbols" })
		vim.keymap.set(
			"n",
			"<leader>fs",
			builtin.current_buffer_fuzzy_find,
			{ desc = "Telescope Search Current buffer" }
		)

		vim.keymap.set("n", "<leader>fr", builtin.resume, {})

		-- keymaps: ts
		vim.keymap.set("n", "<leader>ft", builtin.treesitter, { desc = "Treesitter Telescope" })

		vim.keymap.set(
			"n",
			"<leader>fw",
			telescope.extensions.remember_regex.saved_regex,
			{ desc = "Telescope Saved Regex" }
		)

		telescope.setup({
			-- set ivy theme as default theme. WORK AROUND.
			-- https://github.com/nvim-telescope/telescope.nvim/issues/938#issuecomment-877539724
			defaults = require("telescope.themes").get_ivy({
				layout_config = { height = 0.45 },
			}),
			-- fzf telescope
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
				live_grep_args = {
					auto_quoting = true, -- enable/disable auto-quoting
					-- define mappings, e.g.
					mappings = { -- extend mappings
						i = {
							["<C-k>"] = lga_actions.quote_prompt(),
							["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
							-- freeze the current list and start a fuzzy search in the frozen list
							["<C-space>"] = lga_actions.to_fuzzy_refine,
						},
					},
				},
				saved_regex = {
					saved_regex_table = {
						testing = "%s",
					},
				},
			},
		})
		-- To get fzf loaded and working with telescope, you need to call
		-- load_extension, somewhere after setup function:
		telescope.load_extension("fzf")
		telescope.load_extension("live_grep_args")
		telescope.load_extension("remember_regex")
	end,
}
