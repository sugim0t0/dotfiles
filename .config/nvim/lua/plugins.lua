-- Plugins
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
vim.cmd[[packadd packer.nvim]]

-- install ex command ":PackerInstall"
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
end)

