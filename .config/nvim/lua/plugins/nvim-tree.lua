-- nvim-tree

return {
    "nvim-tree/nvim-tree.lua",
    config = true,
    keys = {
        { mode = 'n', '<leader>e', ':NvimTreeToggle<CR>', desc = 'Toggle NvimTree' },
    }
}
