-- leader key
vim.g.mapleader = " "

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- open url under cursor
vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>")

-- refresh treesitter highlighting
vim.keymap.set({ "n", "v" }, "<leader>H", function()
    vim.cmd("TSToggle highlight")
end, { noremap = true, silent = true })

-- fix hover treesitter
vim.keymap.set('n', 'K', function()
    vim.lsp.buf.hover()
    vim.defer_fn(function()
        vim.cmd('TSBufEnable highlight')
    end, 100)
end, { noremap = true, silent = true })
