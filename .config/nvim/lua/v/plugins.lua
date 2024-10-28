-- install packer if not installed on this machine
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

-- first time startup?
local packer_bootstrap = ensure_packer()

-- autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

-- plugins

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function() require('v.plugins.telescope') end
    }

    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        },
        config = function() require('v.plugins.lsp-zero') end
    }

    -- colorscheme
    use({
        'olivercederborg/poimandres.nvim',
        as = 'poimandres',
        config = function() require('v.plugins.colorscheme') end
    })

    -- writing mode
    use {
        'folke/zen-mode.nvim',
        opt = true,
        cmd = { 'ZenMode' },
        config = function() require('v.plugins.zen-mode') end
    }

    -- syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require('v.plugins.treesitter') end
    }

    -- quick file navigation
    use {
        'theprimeagen/harpoon',
        config = function() require('v.plugins.harpoon') end
    }

    -- visual undo
    use {
        'mbbill/undotree',
        config = function() require('v.plugins.undotree') end
    }

    -- git plugin
    use {
        'tpope/vim-fugitive',
        config = function() require('v.plugins.vim-fugitive') end
    }

    -- status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() require('v.plugins.lualine') end
    }

    -- indentation guides
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function () require('v.plugins.indent-blankline') end
    }

    -- hex-code highlight
    use {
        'norcalli/nvim-colorizer.lua',
        config = function () require('v.plugins.colorizer') end
    }

    -- code commenting
    use {
        'numToStr/Comment.nvim',
        config = function () require('v.plugins.comment') end
    }

    -- url-open
    use {
        'sontungexpt/url-open',
        config = function () require('v.plugins.url-open') end
    }

    -- markdown
    use({
        'MeanderingProgrammer/render-markdown.nvim',
        after = { 'nvim-treesitter' },
        requires = { 'echasnovski/mini.nvim', opt = true },
        config = function () require('v.plugins.render-markdown') end
    })

    -- filesystem edit
    use {
        'stevearc/oil.nvim',
        config = function () require('v.plugins.oil') end
    }

    -- debugger


-- automatically set up the configuration after cloning packer.nvim

    if packer_bootstrap then
        require('packer').sync()
    end
end)
