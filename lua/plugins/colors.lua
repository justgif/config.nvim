return {
    {
        'rebelot/kanagawa.nvim',
        lazy = false,                         -- Load this during startup if it is the main colorscheme
        priority = 1000,                      -- Load this before all the other start plugins
        config = function()
            vim.cmd('colorscheme tokyonight') -- Load the colorscheme
        end
    },
    { 'folke/tokyonight.nvim' }
}
