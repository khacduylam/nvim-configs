return {
  'neovim/nvim-lspconfig',
  enabled = true,
  config = function()
    --[[
    -- doc: https://levelup.gitconnected.com/a-step-by-step-guide-to-configuring-lsp-in-neovim-for-coding-in-next-js-a052f500da2#5a4b
    ----]]
    
    local status, lspconfig = pcall(require, 'lspconfig')
    
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
    
    -- lsp for kotlin
    lspconfig.kotlin_language_server.setup({
      on_attach = on_attach
    })
    
    -- lsp for typescript
    lspconfig.ts_ls.setup({
      on_attach = on_attach
    })
    
    -- lsp for golang
    lspconfig.gopls.setup({
      on_attach = on_attach,
      capabilities = require('cmp_nvim_lsp').default_capabilities(), -- Ensure completion works
      cmd = {"gopls"},
      filetypes = {"go", "gomod"},
      root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
        },
      },
    })
    
    -- lsp for python
    lspconfig.pyright.setup({
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

  end
}
