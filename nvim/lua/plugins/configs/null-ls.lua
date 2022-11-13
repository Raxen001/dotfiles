-- used for linting and formatting
-- TODO: Actually make this fucking plugin to work
print("what the fuck")
local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
    return
end

local formatting = null_ls.builtins.formatting
local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    sources = {
        formatting.prettier,
        formatting.black,
        diagnostics.pylint,
        diagnostics.pydocstyle,
        formatting.stylua,
        diagnostics.clang_check,
        diagnostics.cmake_lint,
        diagnostics.alex,
        code_actions.eslint_d,
        code_actions.refactoring,
        code_actions.shellcheck,
    },
})
