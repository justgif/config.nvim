return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    opts = { completions = { blink = { enabled = true } } },
    config = function()
        -- Only set the preview keymap inside of Markdown files
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'markdown' },
            callback = function(event)
                vim.keymap.set('n', '<leader>mt', ':RenderMarkdown buf_toggle<CR>',
                    { buffer = event.buf, desc = '[M]arkdown [T]oggle Preview' })
            end
        })
    end
}
