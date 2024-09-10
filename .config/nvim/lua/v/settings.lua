-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- line wrap
vim.opt.wrap = false

-- backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- termguicolors
vim.opt.termguicolors = true

-- scroll
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- update
vim.opt.updatetime = 50

-- cursorline
vim.opt.cursorline = true

-- neovide
vim.g.neovide_transparency = 0.88
vim.g.neovide_padding_top = 40
vim.g.neovide_padding_bottom = 40
vim.g.neovide_padding_right = 40
vim.g.neovide_padding_left = 40
vim.g.neovide_hide_mouse_when_typing = true
vim.g.experimental_layer_grouping = true
