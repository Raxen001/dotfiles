local fn = vim.fn
-- Automatically install packer on initial startup
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_Bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print "---------------------------------------------------------"
  print "Press Enter to install packer and plugins."
  print "After install -- close and reopen Neovim to load configs!"
  print "---------------------------------------------------------"
  vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call
local present, packer = pcall(require, "packer")

if not present then
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim'             -- Packer manages itself 
  use 'nvim-lua/plenary.nvim'              -- Avoids callbacks, used by other plugins
  use 'nvim-lua/popup.nvim'                -- Popup for other plugins
  use 'nvim-treesitter/nvim-treesitter'    -- Language parsing completion engine
  use "williamboman/mason.nvim"            -- UI for fetching/downloading LSPs
  use "williamboman/mason-lspconfig.nvim"  -- Bridges mason and lspconfig
  use 'neovim/nvim-lspconfig'              -- Language server protocol implementation
  use 'hrsh7th/nvim-cmp'                   -- Vim completion engine
  use 'L3MON4D3/LuaSnip'                   -- More snippets
  use 'saadparwaiz1/cmp_luasnip'           -- Even more snippets
  use 'hrsh7th/cmp-nvim-lsp'               -- Cmp's own LSP
  use 'hrsh7th/cmp-buffer'                 -- Cmp source for buffer words
  use 'hrsh7th/cmp-path'                   -- Cmp source for path words
  use 'nvim-telescope/telescope.nvim'      -- Finder, requires fzf and ripgrep
  use 'gruvbox-community/gruvbox'          -- Schmexy colors
  use 'folke/which-key.nvim'               -- which key

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }
  use {                                    -- file tree
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }
  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if Packer_Bootstrap then
    require('packer').sync()
  end
end)

require("which-key").setup{}
require("nvim-ts-autotag").setup{}
require("nvim-autopairs").setup{}
