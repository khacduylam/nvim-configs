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
  --[[ COMMON --]]
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-tree/nvim-web-devicons'

  --[[ THEME --]]
  --use 'maxmx03/solarized.nvim'
  --use 'folke/tokyonight.nvim'
  use 'navarasu/onedark.nvim'
  use {
   'nvim-lualine/lualine.nvim',
   requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons'
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

  --[[ LSP CONFIGS --]]
  use 'onsails/lspkind-nvim'
  use 'neovim/nvim-lspconfig'

  --[[ COMPLETION --]]
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'


  --[[ MARKDOWN --]]
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  --[[ GIT --]]
  use 'APZelos/blamer.nvim'
  use 'tpope/vim-fugitive'

  --[[ MISC --]]
  use 'windwp/nvim-autopairs'
  use 'preservim/nerdcommenter'
  use { 'mg979/vim-visual-multi', branch = 'master' }
  use 'leafgarland/typescript-vim'
  --use 'udalov/kotlin-vim'
  use {
    -- NOTE: for prettier ^3.x.x, change code of [<USER>.local/share/nvim/site/pack/packer/start/vim-prettier/autoload/prettier.vim]
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production',
    branch = 'release/0.x',
    --ft ={'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'},
  }

end)
