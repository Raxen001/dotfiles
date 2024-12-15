return {
   "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        	-- A list of parser names, or "all" (the four listed parsers should always be installed)
        ensure_installed = {
            "c",
            "lua",
            "vim",
            "yaml",
            "toml",
            "scheme",
            "scala",
            "rust",
            "python",
            "ocaml",
            "make",
            "json",
            "llvm",
            "dockerfile",
            "git_rebase",
            "gitcommit",
            "gitattributes",
            "gitignore",
            "gomod",
            "go",
            "comment", -- for tags like TODO:, FIXME(user)
            "diff", -- git diff
            "markdown",
            "markdown_inline",
        },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,
        -- List of parsers to ignore installing (for "all")
        -- ignore_install = { "javascript" },
        -- If you need to change the installation directory of the parsers (see -> Advanced Setup)
        -- parser_install_dir = "/some/path/to/store/parsers",
        -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

        highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
        },
        -- Indentation based on treesitter for the = operator. NOTE: This is an experimental feature.
        -- indent = {
        --     enable = true
        -- },
        incremental_selection = {
            enable = true,
            -- init_selection: in normal mode, start incremental selection.
            -- node_incremental: in visual mode, increment to the upper named parent.
            -- scope_incremental: in visual mode, increment to the upper scope
            -- node_decremental: in visual mode, decrement to the previous named node.
            keymaps = {
                init_selection = "gss",
                node_incremental = "gsi",
                scope_incremental = "gsc",
                node_decremental = "gsd",
            },
        },
        -- for enabling inline highlights in markdown files idk https://github.com/MeanderingProgrammer/render-markdown.nvim/issues/249

        }
}
