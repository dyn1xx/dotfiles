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

-- borders
vim.opt.winborder = "rounded"
local float_fg = vim.api.nvim_get_hl(0, { name = "NormalFloat" }).fg
vim.api.nvim_set_hl(0, "FloatBorder", { fg = float_fg })

-- diagnostic pop-up
vim.o.updatetime = 0
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]]
