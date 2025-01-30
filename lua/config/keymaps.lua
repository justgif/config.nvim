vim.keymap.set('n', '<leader><CR>', ':source $MYVIMRC<CR>', { desc = 'Source vimrc' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlights' })

vim.keymap.set('n', '<S-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<S-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<S-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<S-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>ec', ':Vex<CR>', { desc = '[E]xplore [C]urrent Directory' })
vim.keymap.set('n', '<leader>ew', ':Vex .<CR>', { desc = '[E]xplore [W]orking Directory' })

