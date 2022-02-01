-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- My favourite color schemes
	use({ "LunarVim/onedarker.nvim" })
	use({ "sainnhe/gruvbox-material" })

    use({ "nvim-treesitter/nvim-treesitter" })
	use({ "p00f/nvim-ts-rainbow" })
	use({ "windwp/nvim-autopairs" })
	use({ "folke/which-key.nvim" })
	use({ "nvim-telescope/telescope.nvim" })
	use({ "hoob3rt/lualine.nvim" })
	use({
		"akinsho/bufferline.nvim"
	})
	use({
		"kyazdani42/nvim-tree.lua"
	})
	use({ "neovim/nvim-lspconfig"})
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/vim-vsnip" })
	use({ "hrsh7th/cmp-vsnip" })
	use({ "onsails/lspkind-nvim" })
	-- use({ "tami5/lspsaga.nvim" })
	-- use { 'jose-elias-alvarez/null-ls.nvim' }
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "editorconfig/editorconfig-vim" })

	use({ "norcalli/nvim-colorizer.lua" })
	use({ "glepnir/dashboard-nvim" })
	use({ "lukas-reineke/indent-blankline.nvim" })
	use({ "lukas-reineke/format.nvim" })
	use({ "terrortylor/nvim-comment" })
	-- use { 'akinsho/toggleterm.nvim', config = require('toggleterm-config') }
	use({ "voldikss/vim-floaterm" })

	-- Use dependency and run lua function after load
	use({
		"lewis6991/gitsigns.nvim",
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
