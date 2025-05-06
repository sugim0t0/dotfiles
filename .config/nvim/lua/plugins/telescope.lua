return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-frecency.nvim',
        'fannheyward/telescope-coc.nvim',
        'tom-anders/telescope-vim-bookmarks.nvim',
    },
    keys = {
        -- Start find_files
        { '<leader>f', ':Telescope find_files <CR>', silent = true },
        -- Start live_grep (required to install ripgrep: sudo apt-get install ripgrep)
        { '<leader>g', ':Telescope live_grep <CR>', silent = true },
    },
}

