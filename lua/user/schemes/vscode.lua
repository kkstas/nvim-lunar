lvim.builtin.lualine.options.theme = 'vscode'



-- Lua:
-- For dark theme (neovim's default)
vim.o.background = 'dark'
-- For light theme
-- vim.o.background = 'light'

-- local c = require('vscode.colors').get_colors()
require('vscode').setup({
  italic_comments = true,
  disable_nvimtree_bg = true,

  -- Override colors (see ./lua/vscode/colors.lua)
  -- color_overrides = {
  -- vscLineNumber = '#FFFFFF',
  -- },

  -- Override highlight groups (see ./lua/vscode/theme.lua)
  -- group_overrides = {
  -- this supports the same val table as vim.api.nvim_set_hl
  -- use colors from this colorscheme by requiring vscode.colors!
  -- Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
  -- }
})
require('vscode').load()

------------------------–––––------------------------------
------------- tu ustawiam transparent lualine -------------
local colors = {}
-- local colors = require('vscode.colors').get_colors()

colors.inactive = '#666666'
colors.bg = '#262626'
colors.bg2 = '#373737'
colors.fg = '#ffffff'
colors.red = '#f44747'
colors.green = '#4EC9B0'
colors.blue = '#0a7aca'
colors.lightblue = '#5CB6F8'
colors.yellow = '#ffaf00'
colors.pink = '#DDB6F2'

local tr = true

lvim.builtin.lualine.options.theme = {
  normal = {
    a = { fg = vim.o.background == 'dark' and colors.fg or colors.bg, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.blue, bg = tr and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = 'NONE' },
  },

  visual = {
    a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' },
    b = { fg = colors.yellow, bg = 'NONE' },
  },

  inactive = {
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.inactive, bg = tr and 'NONE' or colors.bg },
    c = { fg = colors.inactive, bg = 'NONE' },
  },

  replace = {
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.red, gui = 'bold' },
    b = { fg = colors.red, bg = tr and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = 'NONE' },
  },

  insert = {
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.green, gui = 'bold' },
    b = { fg = colors.green, bg = tr and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = 'NONE' },
  },

  terminal = {
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.green, gui = 'bold' },
    b = { fg = colors.fg, bg = tr and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = 'NONE' },
  },

  command = {
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.pink, gui = 'bold' },
    b = { fg = colors.pink, bg = tr and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = 'NONE' },
  },
}
-----------------------------------------------------------
-----------------------------------------------------------
