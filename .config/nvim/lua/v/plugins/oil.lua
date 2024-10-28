require('oil').setup {
    columns = { "icon" },
    view_options = {
        show_hidden = true,
    },

    -- open parent dir
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
}
