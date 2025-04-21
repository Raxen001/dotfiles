return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set("n", "<leader>t", ":NvimTreeFindFileToggle<cr>", { desc = "Nvim Tree" })
    require("nvim-tree").setup({})
  end,
}
