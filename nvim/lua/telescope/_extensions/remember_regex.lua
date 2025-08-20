saved_regex = require("telescope._extensions.remember_regex.init")

return require("telescope").register_extension({
	setup = function(ext_config, config) end,
    exports = {
        saved_regex = saved_regex
    }
})
