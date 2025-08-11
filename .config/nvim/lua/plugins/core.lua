return {

    -- colorscheme
    { 
        'olivercederborg/poimandres.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('poimandres').setup {
                disable_background = true,
                disable_float_background = true,
                dim_nc_background = true,
            }
        end,

        -- set the colorscheme within lazy config
        init = function()
            vim.cmd("colorscheme poimandres")
        end,
    },

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

    -- bar
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'poimandres',
                    section_separators = { left = '', right = '' },
                    component_separators = { left = '', right = '' },
                },
                sections = {
                    lualine_a = {
                        { 'mode', separator = { left = '', right = '' }, right_padding = 1 },
                    },
                    lualine_b = {
                        { 'branch', separator = { left = '', right = '' }, padding = { left = 1, right = 1 } },
                    },
                    lualine_c = { 'filename' },
                    lualine_x = { 'filetype' },
                    lualine_y = {
                        { 'progress', separator = { left = '', right = '' }, padding = { left = 1, right = 1 } },
                    },
                    lualine_z = {
                        { 'location', separator = { left = '', right = '' }, padding = { left = 1, right = 1 } },
                    },
                },
            }
        end,
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
        dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
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

    -- zen-mode
    {
        "folke/zen-mode.nvim",
        event = "VeryLazy",
        opts = {},
        config = function()
            vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode)

            require("zen-mode").setup({
                window = {
                    width = 80,
                    height = .85,
                    options = {
                        number = false, -- disable number column
                        relativenumber = false, -- disable number column
                    }
                },

                -- actions to execute when the Zen window opens
                on_open = function()
                    vim.opt.linebreak = true
                    vim.opt.wrap = true
                    vim.opt.spell = true
                end,
                -- actions to execute when the Zen window closes
                on_close = function()
                    vim.opt.linebreak = false
                    vim.opt.wrap = false
                    vim.opt.spell = false
                end,
            })
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

    -- hex colors
    {
        'norcalli/nvim-colorizer.lua',
        config = function ()
            require'colorizer'.setup()
        end
    },

}
