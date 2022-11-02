--[[
-- doc: https://github.com/wbthomason/packer.nvim
----]]

-- Check if packer is installed or not
local status, packer = pcall(require, 'packer')
if not status then
  print('packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  --[[ common --]]
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'kyazdani42/nvim-web-devicons'
  --[[ theme --]]
  use 'Mofiqul/vscode.nvim'
  -- use 'maxmx03/solarized.nvim'
  use {
   'nvim-lualine/lualine.nvim',
   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- [[ file explorer --]]
  use { 
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons'
    }
  }
  use {
    'junegunn/fzf', 
    run = './install --bin'
  }
  use 'junegunn/fzf.vim'
  --[[ LSP configs --]]
  use 'onsails/lspkind-nvim'
  use 'neovim/nvim-lspconfig'

  --[[ completion --]]
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'


  --[[ markdown --]]
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  
  --[[ git blame & browse --]]
  use 'APZelos/blamer.nvim'
  use 'tpope/vim-fugitive'

  --[[ misc --]]
  use 'preservim/nerdcommenter'
  use { 'mg979/vim-visual-multi', branch = 'master' }
  use 'leafgarland/typescript-vim'

end)
