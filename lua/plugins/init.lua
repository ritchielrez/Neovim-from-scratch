-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- My favourite color schemes
	use({ "LunarVim/onedarker.nvim" })
	use({ "sainnhe/gruvbox-material" })

	use({ "nvim-treesitter/nvim-treesitter", config = require("treesitter-config") })
	use({ "p00f/nvim-ts-rainbow", requires = { "nvim-treesitter/nvim-treesitter" } })
	use({ "windwp/nvim-autopairs", config = require("npairs-config") })
	use({ "folke/which-key.nvim", config = require("whichkey-config") })
	use({ "nvim-telescope/telescope.nvim", config = require("telescope-config") })
	use({
		"hoob3rt/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = require("lualine-config"),
	})
	use({
		"akinsho/bufferline.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = require("bufferline-config"),
	})
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = require("nvim-tree-config"),
	})
	use({ "neovim/nvim-lspconfig", config = require("lsp") })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp", requires = { "neovim/nvim-lspconfig" } })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "L3MON4D3/LuaSnip" })
	use({ "saadparwaiz1/cmp_luasnip", config = require("snips") })
    use({ "rafamadriz/friendly-snippets" })
	-- use({ "hrsh7th/vim-vsnip" })
	-- use({ "hrsh7th/cmp-vsnip" })
	use({ "onsails/lspkind-nvim" })
	-- use { 'jose-elias-alvarez/null-ls.nvim' }
	use({ "jose-elias-alvarez/null-ls.nvim", requires = { "neovim/nvim-lspconfig" } })
	use({ "editorconfig/editorconfig-vim" })

	use({ "norcalli/nvim-colorizer.lua", config = require("colorizer-config") })
	use({ "glepnir/dashboard-nvim", config = require("dashboard-config") })
	use({ "lukas-reineke/indent-blankline.nvim", config = require("blankline-config") })
	use({ "lukas-reineke/format.nvim", config = require("format-config") })
	use({ "terrortylor/nvim-comment", config = require("comment-config") })
	-- use { 'akinsho/toggleterm.nvim', config = require('toggleterm-config') }
	use({ "voldikss/vim-floaterm", config = require("floaterm-config") })

	use({ "lewis6991/gitsigns.nvim", config = require("gitsigns-config") })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
