return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { "nvim-web-devicons" },
  enabled = true,
  config = function()
    -- disable netrw at the very start of your init.lua (strongly advised)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    
    local function on_attach(bufnr)
      local api = require('nvim-tree.api')
    
      -- default mappings
      api.config.mappings.default_on_attach(bufnr)
    
      -- custom mappings
      vim.keymap.set('n', '?', api.tree.toggle_help)
    end
    
    require('nvim-tree').setup({
      sync_root_with_cwd = true,
      reload_on_bufenter = true,
      respect_buf_cwd = true,
      sort_by = "name",
      on_attach = on_attach,
      view = {
        --adaptive_size = true,
        width = 35,
      },
      git = {
        enable = true,
        ignore = false,
      },
      renderer = {
        icons = {
          glyphs = {
            folder = {
              arrow_closed = '↪',
              arrow_open = ''
            }
          }
        },
        --root_folder_label = true,
        root_folder_modifier = ':~:s?$?/..?',
        indent_markers = { enable = true }
      },
      actions = {
        open_file = {
          quit_on_open = false,
        },
      },
    })

    vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
  end
}
