local keymap = vim.keymap

-- move along panels
keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-l>', '<C-w>l')

-- move lines
keymap.set({ 'v' }, 'K', ":move '<-2 <CR>gv=gv")
keymap.set({ 'v' }, 'J', ":move '>+1 <CR>gv=gv")

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- nvim-tree
keymap.set('n', '<C-t>', ':NvimTreeToggle<CR>')
keymap.set('n', '<C-i>', ':NvimTreeFindFile<CR>')

-- git
keymap.set('n', '<leader>gd', ':Gvdiffsplit!<CR>')
keymap.set('n', 'dgh', ':diffget //2<CR>')
keymap.set('n', 'dgl', ':diffget //3<CR>')
