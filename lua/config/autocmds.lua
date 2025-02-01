local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local yank_group = augroup('HighlightYank', {})
local config_group = augroup('Config', {})

-- Highlight when yanking text
autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = yank_group,
    callback = function()
        vim.highlight.on_yank()
    end,
})
