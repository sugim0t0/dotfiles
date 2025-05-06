-- plugin.lua
-- 2025.05.03

-- Plugin Manager (lazy)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local neovim_plugins = {
    -- VSCode like
    -- require("plugins.coc"),
    -- Fuzzy finder
    require("plugins.telescope"),
    -- Syntax highlight
    require("plugins.nvim-treesitter"),
    -- File explorer
    require("plugins.nvim-tree"),
    -- Status line
    require("plugins.lualine"),
    -- Git blame
    "FabijanZulj/blame.nvim",
    -- Display icons
    "nvim-tree/nvim-web-devicons",
}

require("lazy").setup({
    neovim_plugins
})
