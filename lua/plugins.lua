return {
  --[[ COMMON --]]
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-tree/nvim-web-devicons' },

  --[[ MARKDOWN --]]
  {
    'iamcco/markdown-preview.nvim',
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },

  --[[ GIT --]]
  { 
    'APZelos/blamer.nvim',
    config = function()
      vim.g.blamer_enabled = 1
      vim.g.blamer_delay = 1000
      vim.g.blamer_date_format = '%y/%m/%d %H:%M'
    end
  },
  { 
    'tpope/vim-fugitive',
    config = function()
      vim.cmd [[
        if !exists('*fugitive#statusline')
          set statusline=%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}[L%l/%L,C%03v]
          set statusline+=%=
          set statusline+=%{fugitive#statusline()}
        endif
      
        cnoreabbrev g Git
        cnoreabbrev gopen GBrowse
      ]]
    end
  },

  --[[ CODING --]]
  { 
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup({
        disable_filetype = { "TelescopePrompt" , "vim" },
      })
    end
  },
  { 'preservim/nerdcommenter' },
  { 'mg979/vim-visual-multi', branch = 'master' },
  { 
    'leafgarland/typescript-vim',
    config = function()
      vim.g.typescript_opfirst=[[\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)]]
    end
  },
  {
    'prettier/vim-prettier',
    build = 'yarn install --frozen-lockfile --production',
    branch = 'release/0.x',
    ft = {
      'javascript',
      'typescript',
      'css',
      'less',
      'scss',
      'json',
      'graphql',
      'markdown',
      'vue',
      'svelte',
      'yaml',
      'html',
    },
    config = function()
      vim.cmd [[
        let g:prettier#autoformat = 1
      
        augroup fmt
         autocmd!
         autocmd BufWritePre *.ts,*.tsx,*.js,*.json silent! undojoin | Prettier
        augroup END
      ]]
    end
  }
}
