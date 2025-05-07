return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")
        wk.add({
            { "<leader>lf", "<cmd>Format<cr>", desc = "Format file", mode = "n" },
        })
    end,
    -- opts = {
    --   -- your configuration comes here
    --   -- or leave it empty to use the default settings
    --   -- refer to the configuration section below
    -- },
    -- keys = {
    --   {
    --   },
    -- },
}
