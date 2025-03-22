return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            -- Determine whether this plugin should be loaded
            -- NOTE: Requires make to be installed
            cond = function()
                return vim.fn.executable 'make' == 1
            end
        },
        'nvim-telescope/telescope-ui-select.nvim',
        'debugloop/telescope-undo.nvim',
        {
            'nvim-tree/nvim-web-devicons',
            enabled = vim.g.have_nerd_font
        },
    },
    config = function()
        require('telescope').setup {
            extensions = {
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown(),
                },
                undo = {},
            },
        }

        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')
        pcall(require('telescope').load_extension, 'undo')

        local map = vim.keymap.set

        map('n', '<leader>u', '<cmd>Telescope undo<cr>', { desc = 'Telescope [U]ndo' })

        local builtin = require('telescope.builtin')
        map('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
        map('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
        map('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
        map('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
        map('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch Current [W]ord' })
        map('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch By [G]rep' })
        map('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
        map('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
        map('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files' })
        map('n', '<leader><leader>', builtin.buffers, { desc = 'Find Existing Buffers' })

        map('n', '<leader>/', function()
            builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = 'Fuzzy Search Current Buffer' })

        map('n', '<leader>s/', function()
            builtin.live_grep {
                grep_open_files = true,
                prompt_title = 'Live Grep Open Files',
            }
        end, { desc = '[S]earch Open Files' })

        map('n', '<leader>sn', function()
            builtin.find_files { cwd = vim.fn.stdpath 'config' }
        end, { desc = '[S]earch [N]eovim Config' })
    end
}
