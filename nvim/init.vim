call plug#begin()
" lsp
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'williamboman/nvim-lsp-installer'
" Track the engine.
" Snippets are separated from the engine. Add this if you want them: Plug 'honza/vim-snippets'
" For vsnip user.
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

" Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'nvim-lua/popup.nvim'
    Plug 'preservim/nerdtree' "NerdTRee
    Plug 'ryanoasis/vim-devicons' "Devicons
    Plug 'onsails/lspkind-nvim' "Icons for lsp
    Plug 'sbdchd/neoformat' "neoformat formatter
    Plug 'windwp/nvim-autopairs' " Auto Pairs

    Plug 'mhinz/vim-startify' " Start screen
    Plug 'folke/which-key.nvim' " shows which key to press after leader

    Plug 'morhetz/gruvbox' "Colorscheme
    Plug 'sainnhe/gruvbox-material'

    Plug 'Yggdroot/indentLine' "Tabline show special character
call plug#end()

source $HOME/.config/nvim/nvim-cmp.lua
source $HOME/.config/nvim/configs.vim
source $HOME/.config/nvim/startify.vim
source $HOME/.config/nvim/telescope.vim
source $HOME/.config/nvim/which-keys.vim

" lsp require server, lsp icons
"lua require('nvim-cmp.lua')
"source $HOME/.config/nvim/norc.vim

