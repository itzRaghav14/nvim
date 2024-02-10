local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
-- keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', opts)

-- Pane Navigation
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Buffer Navigation
keymap.set('n', 'H', ':bp<CR>', opts)
keymap.set('n', 'L', ':bn<CR>', opts)

-- Window Management
keymap.set('n', '<leader>sv', ':vsplit<CR>', opts)
keymap.set('n', '<leader>sh', ':split<CR>', opts)
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>', opts)

-- Indenting
keymap.set('v', '<', '<gv', opts)
keymap.set('v', '>', '>gv', opts)

-- Comments
vim.api.nvim_set_keymap('n', '<C-_>', 'gcc<Esc>', { noremap = false })
vim.api.nvim_set_keymap('v', '<C-_>', 'gcc<Esc>', { noremap = false })

-- Cursor Movements
keymap.set('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap.set('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })

-- Common commands
keymap.set('i', 'kj', '<Esc>')
keymap.set('n', '<C-a>', 'ggVG')

-- File Closing/Saving
keymap.set('n', '<leader>q', '<cmd>q!<CR>')
keymap.set('n', '<leader>w', '<cmd>w!<CR>')

-- Copy Pasting
keymap.set({'n', 'x'}, '<leader>p', '"0p')
keymap.set({'n', 'x'}, '<leader>y', '"+y')

-- Searching
keymap.set('n', '<leader>nhl', '<cmd>set nohlsearch<CR>')
