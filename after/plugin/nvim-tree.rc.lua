local status, nvim_tree = pcall(require, 'nvim-tree')
if not status then return end


-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
  sort_by = "name",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = '?', action = 'toggle_help' },
        { key = 'K', action = 'toggle_file_info' },
      }
    }
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
    }
  }
})
