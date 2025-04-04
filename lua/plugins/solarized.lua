return {
  'maxmx03/solarized.nvim',
  enabled = false,
  config = function()
    require('solarized').setup({
      mode = 'dark',
      --theme = 'neo',
      transparent = true,
      colors = {
        Back = '#1e1e1e',
        PopupFront = '#bbbbbb',
        PopupBack = '#272727',
        PopupHighlightBlue = '#004b72',
        PopupHighlightGray = '#343B41',
        CursorDarkDark = '#222222',
        CursorDark = '#51504f',
        CursorLight = '#aeafad',
        Selection = '#264F78',
        LineNumber = '#5a5a5a',
      },
      highlights = function(c)
        local isDark = vim.o.background == 'dark'
        local hl = {
          LineNr = { fg = '#5a5a5a' },
    
          Cursor = { fg = c.CursorDark, bg = c.CursorLight },
          CursorLineNr = { fg = c.PopupFront, bg = c.CursorDarkDark },
          CursorLine = { bg = c.CursorDarkDark },
          CursorColumn = { fg = 'NONE', bg = c.CursorDarkDark },
    
          Pmenu = { fg = c.PopupFront, bg = c.PopupBack },
          PmenuSel = { fg = isDark and c.PopupFront or c.Back, bg = c.PopupHighlightBlue },
          PmenuSbar = { fg = 'NONE', bg = c.PopupHighlightGray },
          PmenuThumb = { fg = 'NONE', bg = c.PopupFront },
         }
    
         return hl
      end
    })
    
    vim.cmd 'colorscheme solarized'
  end
}
