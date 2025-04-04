return {
  { 
    'junegunn/fzf.vim',
    enabled = true
  },
  {
    'junegunn/fzf',
    build = './install --bin',
    enabled = true,
    config = function()
      vim.api.nvim_command([[
        set wildmode=list:longest,list:full
        set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
        let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path '**/node_modules/**' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
      ]])

      -- custom keymap
      vim.keymap.set('n', 'F', ':FZF<CR>')
      vim.keymap.set('n', 'A', ':Ag<CR>')
    end
  }
}
