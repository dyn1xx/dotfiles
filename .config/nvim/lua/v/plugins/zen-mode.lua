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
