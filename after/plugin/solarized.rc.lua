local status, solarized = pcall(require, 'solarized')
if not status then return end

solarized.setup({
  mode = 'dark',
  theme = 'neovim',
  transparent = true
})

vim.cmd 'colorscheme solarized'
