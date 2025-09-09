return {

    -- fuzzer
    {
        "echasnovski/mini.pick",
        version = false,
        config = function()
            local pick = require("mini.pick")

            pick.setup({
                -- Default UI behavior
                options = {
                    content_from_bottom = false,
                    use_cache = true,
                },
            })

            local map = vim.keymap.set
            local opts = { noremap = true, silent = true }

            map("n", "<leader>ff", function()
                pick.builtin.files({ filter = { show_hidden = true } })
            end, vim.tbl_extend("force", opts, { desc = "MiniPick find files" }))

            map("n", "<leader>fg", function()
                pick.builtin.grep_live()
            end, vim.tbl_extend("force", opts, { desc = "MiniPick live grep" }))

            map("n", "<leader>fb", function()
                pick.builtin.buffers()
            end, vim.tbl_extend("force", opts, { desc = "MiniPick buffers" }))

            map("n", "<leader>fh", function()
                pick.builtin.help()
            end, vim.tbl_extend("force", opts, { desc = "MiniPick help tags" }))
        end,
    },

    -- file navigator
    {
        'stevearc/oil.nvim',
        opts = {
            view_options = {
                show_hidden = true
            },
            use_default_keymaps = false,
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
            keymaps = {
                ["g?"] = { "actions.show_help", mode = "n" },
                ["<CR>"] = "actions.select",
                ["<C-t>"] = { "actions.select", opts = { tab = true } },
                ["<C-p>"] = "actions.preview",
                ["<C-c>"] = { "actions.close", mode = "n" },
                ["<C-l>"] = "actions.refresh",
                ["-"] = { "actions.parent", mode = "n" },
                ["_"] = { "actions.open_cwd", mode = "n" },
                ["`"] = { "actions.cd", mode = "n" },
                ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
                ["gs"] = { "actions.change_sort", mode = "n" },
                ["gx"] = "actions.open_external",
                ["g."] = { "actions.toggle_hidden", mode = "n" },
                ["g\\"] = { "actions.toggle_trash", mode = "n" },
            },
        },
        dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
        lazy = false,
    },

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

    -- harpoon
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
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
    }

}
