return {

    -- lsp package manager
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    -- bridges mason with lspconfig
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    "lua_ls",
                    "gopls",
                }
            }
        end,
    },

    -- lspconfig
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end,
    },

    -- automatically set up language servers
    {
        "Massolari/lsp-auto-setup.nvim",
        dependencies = { "neovim/nvim-lspconfig" },
        config = function()
            require"lsp-auto-setup".setup{}
        end
    },

    -- autocomplete
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = '1.*',
        config = function()
            require("blink.cmp").setup({})
        end,
    }

}
