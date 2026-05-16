return {

    -- lsp package manager
    {
        "mason-org/mason.nvim",
        version = "^2.0.0",
        config = function()
            require("mason").setup()
        end,
    },

    -- bridges mason with lspconfig
    {
        "mason-org/mason-lspconfig.nvim",
        version = "^2.0.0",
        dependencies = { "mason-org/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    "lua_ls",
                    "gopls",
                    "pylsp",
                    "ts_ls",
                },
            }
        end,
    },

    -- lspconfig
    {
        "neovim/nvim-lspconfig",
        dependencies = { "mason-org/mason-lspconfig.nvim" },
        config = function()
            -- Keymaps on LSP attach
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local opts = { buffer = args.buf }
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
                end,
            })

            -- Enable servers via the new 0.12 vim.lsp.enable() API
            local servers = { "lua_ls", "gopls", "pylsp", "ts_ls" }
            for _, server in ipairs(servers) do
                vim.lsp.enable(server)
            end
        end,
    },

    -- autocomplete
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = '1.*',
        config = function()
            require("blink.cmp").setup({})
        end,
    },
}
