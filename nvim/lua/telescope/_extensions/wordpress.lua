return require("telescope").register_extension({
	setup = function(ext_config, config) end,
    exports = {
        wordpress = require("telescope._extensions.wordpress.init")
    }
})
