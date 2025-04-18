-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set

map('n', '<leader><CR>', ':source $MYVIMRC<CR>', { desc = 'Source $MYVIMRC' })

map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear Search Highlights' })

map('n', '<C-h>', '<C-w>h', { desc = 'Focus Left Window' })
map('n', '<C-j>', '<C-w>j', { desc = 'Focus Lower Window' })
map('n', '<C-k>', '<C-w>k', { desc = 'Focus Upper Window' })
map('n', '<C-l>', '<C-w>l', { desc = 'Focus Right Window' })

map('n', '<leader>ec', ':Ex<CR>', { desc = '[E]xplore [C]urrent Directory' })
map('n', '<leader>en', ':Ex $MYVIMRC/..<CR>', { desc = '[E]xplore [N]eovim Directory' })
map('n', '<leader>ew', ':Ex .<CR>', { desc = '[E]xplore [W]orking Directory' })

map('n', '<leader>rw', ':%s/<C-r><C-w>//gc<Left><Left><Left>', { desc = '[R]eplace [W]ord' })

map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Terminal Mode To Normal Mode' })
