return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-web-devicons' },
  enabled = true,
  config = function()
    require('bufferline').setup({
      options = {
        mode = 'tabs',
        numbers = 'ordinal',
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
        separator_style = 'thin',
        indicator = {
          style = 'icon',
          icon = ''
        }
      },
    })
  end
}
