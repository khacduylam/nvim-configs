return {
  { 'L3MON4D3/LuaSnip' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-path' },
  { 
    'hrsh7th/cmp-buffer',
    config = function()
      local lspkind = require('lspkind')
      local cmp = require('cmp')

      cmp.setup({
        snippet = {
          expand = function(args) require('luasnip').lsp_expand(args.body) end
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.close(),
          ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
          }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' }
        }),
        formatting = {
          format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
        }
      })

      vim.cmd [[
        set completeopt=menuone,noinsert,noselect
        highlight! default link CmpItemKind CmpItemMenuDefault
      ]]
    end
  },
}
