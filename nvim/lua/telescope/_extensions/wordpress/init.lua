local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local make_entry = require("telescope.make_entry")
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local table_clone = function(original)
	local copy = {}
	for key, value in pairs(original) do
		copy[key] = value
	end
	return copy
end

local function get_keys(t)
	local keys = {}
	for key, _ in pairs(t) do
		table.insert(keys, key)
	end
	return keys
end

local wordpress_functions = {
	update_post_meta = "update_post_meta.*(.*['\"]%s.*?['\"].*)",
	get_post_meta = "get_post_meta.*(.*['\"]%s.*?['\"].*)",
	add_action = "add_action.*(.*['\"]%s.*?['\"].*)",
	do_action = "do_action.*(.*['\"]%s.*?['\"].*)",
	apply_filter = "apply_filter.*(.*['\"]%s.*?['\"].*)",
	add_filter = "add_filter.*(.*['\"]%s.*?['\"].*)",
	do_filter = "do_filter.*(.*['\"]%s.*?['\"].*)",
}

local generate_opts = function(opts)
	opts = opts or {}
	opts.vimgrep_arguments = opts.vimgrep_arguments or conf.vimgrep_arguments
	opts.entry_maker = opts.entry_maker or make_entry.gen_from_vimgrep(opts)
	opts.cwd = opts.cwd and vim.fn.expand(opts.cwd)

	return opts
end

local search_data = function(opts, filter_hooks)
	opts = generate_opts(opts)

	if not filter_hooks or filter_hooks == "" then
		return nil
	end

	local cmd_generator = function(prompt)
		if not prompt or prompt == "" then
			return nil
		end

		local args = vim.tbl_flatten({ table_clone(opts.vimgrep_arguments) })
		local generated_prompt = string.format(wordpress_functions[filter_hooks], prompt)
		local cmd = vim.tbl_flatten({ args, generated_prompt })

		return cmd
	end

	pickers
		.new(opts, {
			prompt_title = filter_hooks,
			finder = finders.new_job(cmd_generator, opts.entry_maker, opts.max_results, opts.cwd),
			sorter = conf.generic_sorter(opts),
		})
		:find()
end

local wordpress = function(opts)
	opts = generate_opts(opts)
	pickers
		.new(opts, {
			prompt_title = "WordPress_functions",
			sorter = conf.generic_sorter(opts),
			finder = finders.new_table({
				results = get_keys(wordpress_functions),
			}),
			attach_mappings = function(prompt_bufnr, map)
				actions.select_default:replace(function()
					actions.close(prompt_bufnr)
					local selection = action_state.get_selected_entry()
					search_data(opts, selection["value"])
				end)
				return true
			end,
		})
		:find()
end

return wordpress
