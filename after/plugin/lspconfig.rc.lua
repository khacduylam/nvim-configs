local status, lspconfig = pcall(require, 'lspconfig')
if not status then return end 

-- custom compeletion items
local protocol = require('vim.lsp.protocol')
protocol.CompletionItemKind = {
  '', -- Text
  '', -- Method
  '', -- Function
  '', -- Constructor
  '', -- Field
  '', -- Variable
  '', -- Class
  'ﰮ', -- Interface
  '', -- Module
  '', -- Property
  '', -- Unit
  '', -- Value
  '', -- Enum
  '', -- Keyword
  '﬌', -- Snippet
  '', -- Color
  '', -- File
  '', -- Reference
  '', -- Folder
  '', -- EnumMember
  '', -- Constant
  '', -- Struct
  '', -- Event
  'ﬦ', -- Operator
  '', -- TypeParameter
}

local on_attach = function(client, bufnr)
  -- mappings 
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
end

lspconfig.tsserver.setup({
    on_attach = on_attach
})

-- config diagnostics 
vim.diagnostic.config({
  virtual_text = {
    prefix = '●'
  },
  update_in_insert = true,
  float = {
    source = 'always'
  }
})
vim.opt.updatetime = 250
--vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
-- -- diagnostic symbols in the sign column (gutter)
--local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
--for type, icon in pairs(signs) do
  --local hl = "DiagnosticSign" .. type
  --vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
--end
