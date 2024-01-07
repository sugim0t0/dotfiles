-- nvim-tree

require('nvim-tree').setup({
    sort_by = 'case_sensitive',
    view = {
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
