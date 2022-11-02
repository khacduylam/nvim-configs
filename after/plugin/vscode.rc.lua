local status, vscode = pcall(require, 'vscode')
if not status then return end 
local c = require('vscode.colors')

vim.opt.background = 'dark'

vscode.setup({
    transparent = false,
    italic_comments = true,
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})

vim.cmd 'colorscheme vscode'
