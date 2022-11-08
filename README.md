# my dotfile for nvim setting 


## plugins 

```shell
packer.startup(function(use)
  --[[ COMMON --]]
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'kyazdani42/nvim-web-devicons'

  --[[ THEME --]]
  --use 'Mofiqul/vscode.nvim'
  use 'maxmx03/solarized.nvim'
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
  use {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production',
    branch = 'release/0.x'
  }
```
