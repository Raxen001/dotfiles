return {
    "neovim/nvim-lspconfig",
    dependencies = {
          "williamboman/mason.nvim",
          "williamboman/mason-lspconfig.nvim",
          "WhoIsSethDaniel/mason-tool-installer.nvim",
          "nvim-lua/plenary.nvim",

    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup {
            ensure_installed = { "ruff", "pyright", "lua_ls", "bashls", "rust_analyzer", "bashls" },
        }

        local lspconfig = require("lspconfig")

        -- Customized on_attach function.
        -- See `:help vim.diagnostic.*` for documentation on any of the below functions.
        local opts = { noremap = true, silent = true, desc = "" }
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)

        -- Use an on_attach function to only map the following keys
        -- after the language server attaches to the current buffer.
        local on_attach = function(client, bufnr)
            -- Enable completion triggered by <c-x><c-o>
            -- vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

            if client.name == "rust_analyzer" then
                -- WARNING: This feature requires Neovim v0.10+
                vim.lsp.inlay_hint.enable()
            end

            -- See `:help vim.lsp.*` for documentation on any of the below functions
            local bufopts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
            vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
            vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
            vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
            vim.keymap.set("n", "<space>wl", function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, bufopts)
            vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
            vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
            vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
            vim.keymap.set("n", "<space>f", function()
                vim.lsp.buf.format({
                    async = true,
                    -- Predicate used to filter clients. Receives a client as
                    -- argument and must return a boolean. Clients matching the
                    -- predicate are included.
                    filter = function(client)
                        -- NOTE: If an LSP contains a formatter, we don't need to use null-ls at all.
                        return client.name == "null-ls" or client.name == "hls" or client.name == "rust_analyzer"
                    end,
                })
            end, bufopts)
        end

        -- How to add an LSP for a specific programming language?
        -- 1. Use `:Mason` to install the corresponding LSP.
        -- 2. Add the configuration below. The syntax is `lspconfig.<name>.setup(...)`
        -- Hint (find <name> here) : https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- lspconfig.pylsp.setup({
        -- 	on_attach = on_attach,
        --     capabilities = capabilities
        -- })

        lspconfig.gopls.setup({
            on_attach = on_attach,
            capabilities = capabilities
        })

        lspconfig.lua_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim).
                        version = "LuaJIT",
                    },
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global.
                        globals = { "vim" },
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files.
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    -- Do not send telemetry data containing a randomized but unique identifier.
                    telemetry = {
                        enable = false,
                    },
                },
            },
        })

        lspconfig.bashls.setup({

            capabilities = capabilities,
        })

        lspconfig.rust_analyzer.setup({
            -- source: https://rust-analyzer.github.io/manual.html#nvim-lsp
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.clangd.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.ocamllsp.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.ruby_lsp.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        -- Case 1. For CMake Users
        --     $ cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON .
        -- Case 2. For Bazel Users, use https://github.com/hedronvision/bazel-compile-commands-extractor
        -- Case 3. If you don't use any build tool and all files in a project use the same build flags
        --     Place your compiler flags in the compile_flags.txt file, located in the root directory
        --     of your project. Each line in the file should contain a single compiler flag.
        -- src: https://clangd.llvm.org/installation#compile_commandsjson
        lspconfig.clangd.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.hls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })


        local on_attach = function(client, bufnr)
          if client.name == 'ruff' then
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
          end
        end

        require('lspconfig').ruff.setup {
          on_attach = on_attach,
        }

        require('lspconfig').pyright.setup {
          settings = {
            pyright = {
              -- Using Ruff's import organizer
              disableOrganizeImports = true,
            },
            python = {
              analysis = {
                -- Ignore all files for analysis to exclusively use Ruff for linting
                ignore = { '*' },
              },
            },
          },
        }
    end,
}