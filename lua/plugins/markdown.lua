return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    opts = {
        completions = { blink = { enabled = true } },
        only_render_image_at_cursor = true,
    },
    config = function()
        -- Only set the preview keymap inside of Markdown files
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'markdown' },
            callback = function(event)
                vim.keymap.set('n', '<leader>tm', ':RenderMarkdown buf_toggle<CR>',
                    { buffer = event.buf, desc = '[T]oggle [M]arkdown Preview' })
            end
        })
    end
}
