return {
  'folke/noice.nvim',
  enabled = true,
  dependencies = {
    'hrsh7th/nvim-cmp',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require("noice").setup({
      cmdline = {
        enabled = true, -- enables the Noice cmdline UI
        view = "cmdline_popup",
      },

      views = {
        cmdline_popup = {
          position = {
            row = "50%",
            col = "50%",
          },
          size = {
            width = "auto",
            height = "auto",
          },
          border = {
            style = "rounded",
            padding = { 1, 2 },
          },
          win_options = {
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
            winblend = 10, -- transparency level
          }
        }
      },

      messages = {
        view = "popup", -- display :ls, :messages, etc. in floating popup
      },

      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },

      routes = {
       -- Skip "lines selected"
        {
          filter = {
            event = "msg_show",
            find = "lines? selected",
          },
          opts = { skip = true },
        },
       -- Skip "%d lines yanked"
        {
          filter = {
            event = "msg_show",
            find = "lines yanked",
          },
          opts = { skip = true },
        },
        -- Skip NvimTree messages
        {
          filter = {
            event = "msg_show",
            find = "^NvimTree",
          },
          opts = { skip = true },
        },
        -- Skip "3 more lines", "1 fewer line", etc.
        {
          filter = {
            event = "msg_show",
            find = "%d+ more lines?",
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = "msg_show",
            find = "%d+ fewer lines?",
          },
          opts = { skip = true },
        },
        -- Skip "Existed" message
        {
          filter = {
            event = "msg_show",
            find = "^Exited",
          },
          opts = { skip = true },
        },
        -- Skip "VM warnings" message
        {
          filter = {
            event = "msg_show",
            find = "^VM has started with warnings",
          },
          opts = { skip = true },
        },
        -- Skip "written" message
        {
          filter = {
            event = "msg_show",
            find = "written",
          },
          opts = { skip = true },
        }
      },
    })
  end
}
