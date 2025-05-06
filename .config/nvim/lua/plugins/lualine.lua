-- lualine
--            +-----------------------------------------+
-- sections > | A | B | C |                 | X | Y | Z |
--            +-----------------------------------------+

return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    event = { 'BufNewFile', 'BufRead' },
    config = function()
        local colors = {
            white     = '#ffffff',
            gray      = '#c0c0c0',
            black     = '#000000',
            yellow    = '#ffff00',
            orange    = '#ffaf00',
            red       = '#ff0000',
            magenta   = '#ff00ff',
            cyan      = '#7bbfff',
            blue      = '#0000ff',
            darkblue  = '#000080',
            green     = '#008000',
            lime      = '#00ff00',
        }
        local custom_theme = {
            normal = {
                a = { fg = colors.white, bg = colors.darkblue, gui = 'bold' },
                b = { fg = colors.black, bg = colors.orange },
                c = { fg = colors.black, bg = colors.gray },
            },
            insert = { a = { fg = colors.white, bg = colors.green, gui = 'bold' } },
            visual = { a = { fg = colors.white, bg = colors.magenta, gui = 'bold' } },
            replace = { a = { fg = colors.black, bg = colors.yellow, gui = 'bold' } },
            command = { a = { fg = colors.white, bg = colors.red, gui = 'bold' } },
            terminal = { a = { fg = colors.black, bg = colors.lime, gui = 'bold' } },
            inactive = {
                a = { fg = colors.black, bg = colors.gray, gui = 'bold' },
                b = { fg = colors.gray, bg = colors.gray },
                c = { fg = colors.gray, bg = colors.gray },
            },
        }
        local lualine = require('lualine')
        local config = {
            options = {
                icons_enabled = true,
                theme = custom_theme,
                component_separators = {},
                -- section_separators = {},
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
            inactive_section = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
        lualine.setup(config)
    end
}
