local status, bufferline = pcall(require, "bufferline")
if not status then return end

bufferline.setup({
  options = {
    mode = 'buffers',
    numbers = 'buffer_id',
    separator_style = 'thick',
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  }
})

