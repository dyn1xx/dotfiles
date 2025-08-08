-- leader key
vim.g.mapleader = " "

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- insert empty line
vim.keymap.set("n", "<leader>o", ":put _<CR>")
vim.keymap.set("n", "<leader>O", ":put! _<CR>")

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

-- mason
vim.keymap.set({ "n", "v" }, "<leader>m", function()
    vim.cmd("Mason")
end, { noremap = true, silent = true })

-- lazy
vim.keymap.set({ "n", "v" }, "<leader>z", function()
    vim.cmd("Lazy")
end, { noremap = true, silent = true })
