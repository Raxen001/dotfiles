-- hack to have inline higlighting idk why it doesn't work otherwise
require('nvim-treesitter.configs').setup {
  ensure_installed = { "vimdoc", "query", "markdown", "markdown_inline" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
