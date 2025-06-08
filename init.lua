require('ttavyud.lazy')
require('ttavyud.options')
require('ttavyud.keymaps')

local has = vim.fn.has
local is_mac = has 'macunix'
local is_win = has 'win32'
if is_mac then
  require('ttavyud.macos')
elseif is_win then
  require('ttavyud.windows')
else
  print('os type can not be detected')
end

-- For running Ubuntu in Windows Subsystem for Linux (WSL)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.lua", "*.go" },
  callback = function()
    vim.cmd([[%s/\r$//e]])
  end,
})
