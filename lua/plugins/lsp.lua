return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").lua_ls.setup {}
        end
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- Only load on Lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        }
    }
}

