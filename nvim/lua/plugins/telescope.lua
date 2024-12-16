return {
  -- keymaps in keymaps.lua
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function ()
       local builtin = require('telescope.builtin')
        -- keymaps: telescope builtins
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        -- keymaps: ts
        vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = 'Treesitter Telescope' })

        -- vim.keymap.set('n', '', ,{desc=""})

        -- keymps: telescope diagnostic
        -- vim.keymap.set('n', '<leader>df', builtin.diagnostics, { desc = 'Find Diagnostics Telescope' })

        -- keymaps: references
        -- vim.keymap.set('n', '<leader>lr', builtin.lsp_references, { desc = 'Find References' })
        -- vim.keymap.set('n', '<leader>li', builtin.lsp_implementations, { desc = 'Find Implementation' })
        -- vim.keymap.set('n', '<leader>ld', builtin.lsp_definitions, { desc = 'Find Definitions' })


        -- fzf telescope
       require('telescope').setup {
         extensions = {
           fzf = {
             fuzzy = true,                    -- false will only do exact matching
             override_generic_sorter = true,  -- override the generic sorter
             override_file_sorter = true,     -- override the file sorter
             case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                              -- the default case_mode is "smart_case"
           }
         }
       }
       -- To get fzf loaded and working with telescope, you need to call
       -- load_extension, somewhere after setup function:
       require('telescope').load_extension('fzf')
    end
}
