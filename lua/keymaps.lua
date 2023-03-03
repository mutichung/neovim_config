vim.g.mapleader = ';'
vim.g.maplocalleader = ';'
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
local silentopts = { noremap = true, silent = true }
keymap('n', '<leader>sc', ':source $MYVIMRC<CR>', opts)
keymap('i', '<leader>;', '<ESC>', silentopts)
keymap('n', '<leader>w', ':w<CR>', opts)
keymap('n', '<leader>q', ':q<CR>', silentopts)
keymap('n', '<leader>wq', ':wq<CR>', silentopts)

vim.o.number=true
keymap('n', '<leader>n', ':set number ! number?<CR>', opts)

-- Clear highlight w/ <leader> c
keymap('n', '<leader>c', ':nohl<CR>', opts)

-- NvimTree
keymap('n', '<leader><Space>', ':NvimTreeToggle<CR>', opts)

-- Toggle Transparent w/ <leader> t
keymap('n', '<leader>t', ':TransparentToggle<CR>', silentopts)

-- Switch buffers
-- keymap('n', '<leader>bn', ':bn', silentops)
-- keymap('n', '<leader>bp', ':bp', silentops)

