return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require('harpoon')

        harpoon:setup({
            settings = {
                save_on_toggle = true,
                sync_on_ui_close = true
            },
        })

        vim.keymap.set('n', '<leader>hp', function() harpoon:list():prepend() end, { desc = '[H]arpoon [P]repend' })
        vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end, { desc = '[H]arpoon [A]ppend' })
        vim.keymap.set('n', '<leader>hd', function() harpoon:list():remove() end, { desc = '[H]arpoon [D]elete' })
        vim.keymap.set('n', '<leader>hl', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '[H]arpoon [L]ist' })

        vim.keymap.set('n', '<leader>hr1', function() harpoon:list():replace_at(1) end, {desc = '[H]arpoon [R]eplace [1]'})
        vim.keymap.set('n', '<leader>hr2', function() harpoon:list():replace_at(2) end, {desc = '[H]arpoon [R]eplace [2]'})
        vim.keymap.set('n', '<leader>hr3', function() harpoon:list():replace_at(3) end, {desc = '[H]arpoon [R]eplace [3]'})
        vim.keymap.set('n', '<leader>hr4', function() harpoon:list():replace_at(4) end, {desc = '[H]arpoon [R]eplace [4]'})

        vim.keymap.set('n', '<A-1>', function() harpoon:list():select(1) end)
        vim.keymap.set('n', '<A-2>', function() harpoon:list():select(2) end)
        vim.keymap.set('n', '<A-3>', function() harpoon:list():select(3) end)
        vim.keymap.set('n', '<A-4>', function() harpoon:list():select(4) end)
    end
}

