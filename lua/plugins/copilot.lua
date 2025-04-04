return {
  {
    'github/copilot.vim',
    enabled = function()
      local handle = io.popen('node -v')
      if not handle then return false end

      local version = handle:read('*a')
      handle:close()

      -- Extract version number like 'v20.2.0' -> 20
      local major = tonumber(version:match('v(%d+)'))
      return major ~= nil and major > 18
    end,
  }
}

