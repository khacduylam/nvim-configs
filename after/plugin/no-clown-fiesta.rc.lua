local status, noClownFiesta = pcall(require, 'no-clown-fiesta')
if not status then return end

noClownFiesta.setup({
  transparent = true, -- Enable this to disable the bg color
  styles = {
    -- You can set any of the style values specified for `:h nvim_set_hl`
    comments = { italic = true },
    functions = {},
    keywords = {},
    lsp = { underline = true },
    match_paren = {},
    type = { bold = true },
    variables = {},
  },
})

vim.cmd 'colorscheme no-clown-fiesta'
