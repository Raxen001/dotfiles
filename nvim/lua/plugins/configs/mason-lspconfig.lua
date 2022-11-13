-- this file contains lsp server attachments
local present, masonLspconfig = pcall(require, "mason-lspconfig")

if not present then
  return
end
masonLspconfig.setup({
  automatic_installation = true,
--  ensure_installed = { "sumneko_lua", "rust_analyzer", "lua", "clangd", "python", "marksman"  }
})

masonLspconfig.setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        ["sumneko_lua"] = function ()
            require("lspconfig")["sumneko_lua"].setup{
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"},
                        },
                    }
            }
        }
        end

        --
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--
--lspconfig.sumneko_lua.setup {
--  on_attach = on_attach,
--  capabilities = capabilities,
--
--  settings = {
--    Lua = {
--      diagnostics = {
--        globals = { "vim" },
--      },
--    },
--  },
--}
}
