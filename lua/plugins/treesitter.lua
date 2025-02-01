return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = { 'c', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
        auto_install = true,
        highlight = {
            enable = true,
            disable = function(lang, buf)
                local max_filesize = 100 * 1024 -- 100 KB
                local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    vim.notify(
                        'File larger than 100KB, Treesitter disabled for performance',
                        vim.log.levels.WARN,
                        { title = 'Treesitter' }
                    )
                    return true
                end
            end,
            -- Some languages depend on vim's regex highlighting system for indent rules
            -- If there are weird indenting issues, add it here and to the indent disable list
            additional_vim_regex_highlighting = { }
        },
        indent = {
            enable = true,
            disable = { }
        },
    }
}

