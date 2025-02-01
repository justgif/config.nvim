vim.keymap.set('n', '<leader><CR>', ':source $MYVIMRC<CR>', { desc = 'Source vimrc' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlights' })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>ec', ':Vex<CR>', { desc = '[E]xplore [C]urrent Directory' })
vim.keymap.set('n', '<leader>en', ':Vex $MYVIMRC/..<CR>', { desc = '[E]xplore [N]eovim Directory' })
vim.keymap.set('n', '<leader>ew', ':Vex .<CR>', { desc = '[E]xplore [W]orking Directory' })
