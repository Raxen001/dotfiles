return {
    "stevearc/conform.nvim",
    opts = {},

    config = function()
        -- setup conform for the following languages.
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "black" },
                rust = { "rustfmt", lsp_format = "fallback" },
                javascript = { "prettier", "prettierd", stop_after_first = true },
                javascriptreact = { "prettier", "prettierd" },
                php = { "phpcbf" },
            },
        })

        -- setup :Format command for conform
        vim.api.nvim_create_user_command("Format", function(args)
            local range = nil
            if args.count ~= -1 then
                local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                range = {
                    start = { args.line1, 0 },
                    ["end"] = { args.line2, end_line:len() },
                }
            end
            require("conform").format({ async = true, lsp_format = "fallback", range = range })
        end, { range = true })
    end,

    keys = {
        { "<leader>lf", "<cmd>Format<cr>", desc = "Format file", mode = "n" },
    },
}
