return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
        delay = 0,
        spec = {
            { 's',          group = '[S]urround' },
            { '<leader>e',  group = '[E]xplore' },
            { '<leader>h',  group = '[H]arpoon' },
            { '<leader>hr', group = '[H]arpoon [R]eplace' },
            { '<leader>s',  group = '[S]earch' },
            { '<leader>t',  group = '[T]oggle' },
        },
    },
    keys = {
        {
            '<leader>?',
            function()
                require('which-key').show({ global = true })
            end,
            desc = 'Buffer Local Keymaps'
        }
    }
}
