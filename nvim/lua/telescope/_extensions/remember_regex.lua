local saved_regex = require("telescope._extensions.remember_regex.saved_regex")

return require("telescope").register_extension({
	exports = {
		saved_regex = saved_regex,
	},
})
