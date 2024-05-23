-- leader key
vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- open url under cursor
vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>")
