return {

    -- indent blankline
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
        config = function()
            require("ibl").setup()
        end,
    },

    -- url-open
    {
        "sontungexpt/url-open",
        event = "VeryLazy",
        cmd = "URLOpenUnderCursor",
        config = function()
            local status_ok, url_open = pcall(require, "url-open")
            if not status_ok then
                return
            end
            url_open.setup ({})
            vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>")
        end,
    },

    -- auto pairs
    {
        'echasnovski/mini.pairs',
        version = false,
        config = function()
            require('mini.pairs').setup()
        end
    },

    -- color code preview
    {
        'norcalli/nvim-colorizer.lua',
        config = function ()
            require 'colorizer'.setup()
        end
    },

}
