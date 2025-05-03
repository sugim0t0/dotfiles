-- init.lua
-- Core settings
-- Maintainer:  Shun SUGIMOTO
-- Last Change: 2025 May 03
-- Revision:    2

-- RTP (Run Time Path)
vim.api.nvim_command('set runtimepath^=$(pwd)')

-- Mapleader <leader>
vim.g.mapleader  = " "

-- Options
vim.opt.number        = true
vim.opt.ruler         = true
vim.opt.cursorline    = true
vim.opt.cursorcolumn  = true
vim.opt.textwidth     = 0
vim.opt.laststatus    = 2
vim.opt.cmdheight     = 2
vim.opt.showmatch     = true
vim.opt.matchtime     = 1
vim.opt.helpheight    = 999
vim.opt.encoding      = 'utf-8'
vim.opt.expandtab     = true
vim.opt.tabstop       = 4
vim.opt.shiftwidth    = 4
vim.opt.autoindent    = true
vim.opt.smartindent   = true
vim.opt.scrolloff     = 8
vim.opt.hlsearch      = true
vim.opt.incsearch     = true
vim.opt.clipboard:append({'unnamedplus'})

vim.scriptencoding    = 'utf-8'

-- Keymap
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
vim.api.nvim_set_keymap('n', 'gj', 'j', { noremap = true })
vim.api.nvim_set_keymap('n', 'gk', 'k', { noremap = true })

-- Color
vim.cmd[[colorscheme sugicolor]]

-- Advanced settings
require("rust")

-- Plugins
require("plugin")
