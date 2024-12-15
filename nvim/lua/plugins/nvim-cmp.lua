return {
    "hrsh7th/cmp-nvim-lsp",
    dependencies = {
        "hrsh7th/nvim-cmp",
        "onsails/lspkind.nvim",
	    "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
	    "hrsh7th/cmp-buffer", -- buffer auto-completion
	    "hrsh7th/cmp-path", -- path auto-completion
	    "hrsh7th/cmp-cmdline", -- cmdline auto-completion
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "saadparwaiz1/cmp_luasnip",
        {
          "L3MON4D3/LuaSnip",
          version = "v2.3", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        },
	},
		opt = function()
			require("config.nvim-cmp")
		end,
    config = function()
        local luasnip = require("luasnip")
        local cmp_ok, cmp = pcall(require, "cmp")
        local lspkind_ok, lspkind = pcall(require, "lspkind")

        if not cmp_ok or not lspkind_ok then
            return
        end

        local has_words_before = function()
            unpack = unpack or table.unpack
            local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        end

        cmp.setup({
            snippet = {
                -- REQUIRED - you must specify a snippet engine
                expand = function(args)
                    -- WARNING: This feature requires Neovim v0.10+
                    vim.snippet.expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                -- Use <C-b/f> to scroll the docs.
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                -- Use <C-k/j> to switch in items.
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),
                -- Accept ([y]es) the completion.
                --  This will auto-import if your LSP supports it.
                --  This will expand snippets if the LSP sent a snippet.
                ['<C-y>'] = cmp.mapping.confirm { select = true },

                ['<C-Space>'] = cmp.mapping.complete {},

                ['<C-l>'] = cmp.mapping(function()
                  if luasnip.expand_or_locally_jumpable() then
                    luasnip.expand_or_jump()
                  end
                end, { 'i', 's' }),
                ['<C-h>'] = cmp.mapping(function()
                  if luasnip.locally_jumpable(-1) then
                    luasnip.jump(-1)
                  end
                end, { 'i', 's' }),

            }),
            -- Let's configure the item's appearance
            -- source: https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance
            formatting = {
                -- Customize the appearance of the completion menu
                format = lspkind.cmp_format({
                    -- Show only symbol annotations
                    mode = "symbol_text",
                    -- Prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                    maxwidth = 120,
                    -- When the popup menu exceeds maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
                    ellipsis_char = "...",

                    -- The function below will be called before any actual modifications from lspkind
                    -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
                    before = function(entry, vim_item)
                        vim_item.menu = ({
                            nvim_lsp = "[Lsp]",
                            buffer = "[File]",
                            path = "[Path]",
                        })[entry.source.name]
                        return vim_item
                    end,
                }),
            },
            -- Set source precedence
            sources = cmp.config.sources({
                { name = "nvim_lsp" }, -- For nvim-lsp
                { name = 'luasnip' },     -- For luasnip user
                { name = "buffer" }, -- For buffer word completion
                { name = "path" }, -- For path completion
                { name = 'nvim_lsp_signature_help' } -- gets function paramenters
            }),
        })

        -- Set configuration for specific filetype.
        cmp.setup.filetype("gitcommit", {
            sources = cmp.config.sources({
                { name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
            }, {
                { name = "buffer" },
            }),
        })

        -- cmp.setup.filetype("markdown", {
        --     sources = cmp.config.sources({
        --         {name = "render-markdown"}
        --     })
        -- })

        -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })

        cmp.setup({
            enabled = function()
              -- disable completion in comments
              local context = require 'cmp.config.context'
              -- keep command mode completion enabled when cursor is in a comment
              if vim.api.nvim_get_mode().mode == 'c' then
                return true
              else
                return not context.in_treesitter_capture("comment") 
                  and not context.in_syntax_group("Comment")
              end
            end
        })

        -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
        -- cmp.setup.cmdline(":", {
        -- 	mapping = cmp.mapping.preset.cmdline(),
        -- 	sources = cmp.config.sources({
        -- 		{ name = "path" },
        -- 	}, {
        -- 		{ name = "cmdline" },
        -- 	}),
        -- })

    end,
}
