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

