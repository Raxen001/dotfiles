local ok, dap = pcall(require, "dap")
if not ok then
    return
end

local status_ok, mason_nvim_dap = pcall(require, "mason-nvim-dap")
if not status_ok then
    return
end



mason_nvim_dap.setup({
    ensure_installed = { "stylua", "jq", "html", "css" },
    automatic_installation = true,
    automatic_setup = true,
})

mason_nvim_dap.setup_handlers()

local statusok, dapui = pcall(require, "dapui")
if not statusok then
    return
end
dapui.setup()
