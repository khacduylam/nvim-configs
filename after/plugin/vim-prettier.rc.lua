vim.cmd [[
  let g:prettier#autoformat = 1

  augroup fmt
   autocmd!
   autocmd BufWritePre *.ts,*.tsx,*.js,*.json silent! undojoin | Prettier
  augroup END
]]
