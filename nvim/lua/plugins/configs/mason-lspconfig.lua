-- this file contains lsp server attachments
local present, masonLspconfig = pcall(require, "mason-lspconfig")

if not present then
  return
end
masonLspconfig.setup({
  automatic_installation = true,
})

masonLspconfig.setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
        end,
}
