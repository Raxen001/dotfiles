local M = {}

local defaults = {
	remember_regex = {
		regex_mapping = {
			testing = "%s",
		},
	},
}

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", defaults, M.options, opts or {})
end

return M
