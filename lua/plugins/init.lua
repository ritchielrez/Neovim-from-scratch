-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- My favourite color schemes
    use { 'LunarVim/onedarker.nvim' }
    use { 'sainnhe/gruvbox-material', config = vim.cmd[[colorscheme gruvbox-material]] }

    use { 'nvim-treesitter/nvim-treesitter', config = require('treesitter-config') }
    use { 'p00f/nvim-ts-rainbow', requires = { 'nvim-treesitter/nvim-treesitter' } } 
    use { 'windwp/nvim-autopairs', config = require('npairs-config') }
    use { 'folke/which-key.nvim', config = require('whichkey-config') }
    use { 'nvim-telescope/telescope.nvim', config = require('telescope-config') }
    use { 'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' }, config = require('lualine-config') }
    use { 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons' }, config = require('bufferline-config') }
    use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }, config = require('nvim-tree-config') }
    use { 'neovim/nvim-lspconfig', config = require('lsp') }
    use { '' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'onsails/lspkind-nvim' }
    use { 'tami5/lspsaga.nvim', branch = 'nvim6.0' }
    -- use { 'jose-elias-alvarez/null-ls.nvim' }
    use { 'jose-elias-alvarez/null-ls.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    use { 'norcalli/nvim-colorizer.lua', config = require('colorizer').setup() }
    use { 'glepnir/dashboard-nvim', config = require('dashboard-config') }
    use { 'lukas-reineke/indent-blankline.nvim', config = require('blankline-config') }
    use { 'lukas-reineke/format.nvim', config = require('format-config') }
    use { 'terrortylor/nvim-comment', config = require('comment-config') }
    -- use { 'akinsho/toggleterm.nvim', config = require('toggleterm-config') }
    use { 'voldikss/vim-floaterm', config = require('floaterm-config') }

    -- Use dependency and run lua function after load
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
        config = function() require('gitsigns').setup{} end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end

end)

