
-- remove all before autocmd
vim.cmd("autocmd!")

-- set default clipboard
vim.opt.clipboard = 'unnamedplus'

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.signcolumn = 'no'
---- vim.opt.colorcolumn = '120'
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.lazyredraw = true
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*', '*.o', '*.obj', '.git', '*.rbc', '*.pyc', '*/__pycache__/*' }
vim.opt.wildoptions = 'pum'
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.pumblend = 5

-- add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

-- only active mouse for command mode
vim.opt.mouse = 'c'

-- spellcheck 
--vim.opt.spell = true
--vim.opt.spelllang = { 'en_us' }


