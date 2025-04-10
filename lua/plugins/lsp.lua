return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'williamboman/mason.nvim', opts = {} },
            'williamboman/mason-lspconfig.nvim',
            'WhoIsSethDaniel/mason-tool-installer.nvim',
            { 'j-hui/fidget.nvim',       opts = {} },
            'saghen/blink.cmp'
        },
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            -- Add language servers here to automatically install them
            local servers = {
                clangd = {},
                lua_ls = {},
                marksman = {},
            }

            local ensure_installed = vim.tbl_keys(servers or {})
            vim.list_extend(ensure_installed, {
                'stylua', -- Formats Lua code
            })
            require('mason-tool-installer').setup { ensure_installed = ensure_installed }

            require('mason-lspconfig').setup {
                ensure_installed = {},
                automatic_installation = false,
                handlers = {
                    function(server_name)
                        local server = servers[server_name] or {}
                        server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                        require('lspconfig')[server_name].setup(server)
                    end
                }
            }

            local autocmd = vim.api.nvim_create_autocmd
            local augroup = vim.api.nvim_create_augroup

            autocmd('LspAttach', {
                group = augroup('lsp-attach', { clear = true }),
                callback = function(event)
                    local map = function(keys, func, desc, mode)
                        mode = mode or 'n'
                        vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
                    end

                    map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
                    map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
                    map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
                    map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
                    map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
                    map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
                    map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
                    map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
                    map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction', { 'n', 'x' })

                    local client = vim.lsp.get_client_by_id(event.data.client_id)

                    -- Highlight references for the current word after holding the cursor on it
                    -- Clear highlights after moving the cursor
                    if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
                        local highlight_group = augroup('lsp-highlight', { clear = false })

                        autocmd({ 'CursorHold', 'CursorHoldI' }, {
                            buffer = event.buf,
                            group = highlight_group,
                            callback = vim.lsp.buf.document_highlight
                        })

                        autocmd({ 'CursorMoved', 'CursorMovedI' }, {
                            buffer = event.buf,
                            group = highlight_group,
                            callback = vim.lsp.buf.clear_references
                        })

                        autocmd('LspDetach', {
                            group = augroup('lsp-detach', { clear = true }),
                            callback = function(event2)
                                vim.lsp.buf.clear_references()
                                vim.api.nvim_clear_autocmds { group = 'lsp-highlight', buffer = event2.buf }
                            end
                        })
                    end

                    -- Toggle inlay hints
                    if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
                        map('<leader>th', function()
                            vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
                        end, '[T]oggle Inlay [H]ints')
                    end

                    -- Format buffer on write
                    if client and client.supports_method('textDocument/formatting') then
                        autocmd('BufWritePre', {
                            buffer = event.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = event.buf, id = client.id })
                            end
                        })
                    end
                end
            })

            vim.keymap.set('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>', { desc = '[F]ormat Buffer' })
        end
    },
    {
        'folke/lazydev.nvim',
        ft = 'lua', -- Only load on Lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
            },
        }
    }
}
