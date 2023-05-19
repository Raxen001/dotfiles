local fn = vim.fn
-- Automatically install packer on initial startup
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    Packer_Bootstrap =
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    print("---------------------------------------------------------")
    print("Press Enter to install packer and plugins.")
    print("After install -- close and reopen Neovim to load configs!")
    print("---------------------------------------------------------")
    vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call
local present, packer = pcall(require, "packer")

if not present then
    return
end

packer.startup(function(use)
    use("wbthomason/packer.nvim")                                               -- Packer manages itself
    use("nvim-lua/plenary.nvim")                                                -- Avoids callbacks, used by other plugins
    use("nvim-lua/popup.nvim")                                                  -- Popup for other plugins
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })               -- Language parsing completion engine
    use("williamboman/mason.nvim")                                              -- UI for fetching/downloading LSPs
    use("williamboman/mason-lspconfig.nvim")                                    -- Bridges mason and lspconfi                                               g
    use("neovim/nvim-lspconfig")                                                -- Language server protocol implementation
    use("hrsh7th/nvim-cmp")                                                     -- Vim completion engine
    use("L3MON4D3/LuaSnip")                                                     -- More snippets
    use("saadparwaiz1/cmp_luasnip")                                             -- Even more snippets
    use("hrsh7th/cmp-nvim-lsp")                                                 -- Cmp's own LSP
    use("hrsh7th/cmp-buffer")                                                   -- Cmp source for buffer words
    use("hrsh7th/cmp-path")                                                     -- Cmp source for path words
    use("hrsh7th/cmp-nvim-lsp-document-symbol")                                 -- cmp symbols
    use("hrsh7th/cmp-nvim-lsp-signature-help")                                  -- cmp lsp signature
    use("nvim-telescope/telescope.nvim")                                        -- Finder, requires fzf and ripgrep
    use("gruvbox-community/gruvbox")                                            -- Gruvbox colors
    use("windwp/nvim-ts-autotag")                                               -- Auto End tags
    use("windwp/nvim-autopairs")                                                -- Auto Pair braces [](){}
    use("folke/which-key.nvim")                                                 -- Which keys can be pressed
    use({                                                                       -- code formatting and lint
        "jose-elias-alvarez/null-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    })

    use({
        "goolord/alpha-nvim",                                                   -- Start up Screen
        requires = { "kyazdani42/nvim-web-devicons" },
    })

    use({                                                                       -- file tree
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons",                                     -- optional, for file icons
        },
    })
    use("mfussenegger/nvim-dap")                                                -- Debugger GDB
    use("jayp0521/mason-nvim-dap.nvim")
    use({                                                                       -- debugger ui
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" },
    })
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if Packer_Bootstrap then
        require("packer").sync()
    end
end)

require("nvim-autopairs").setup()
require("nvim-ts-autotag").setup()
require("which-key").setup()
