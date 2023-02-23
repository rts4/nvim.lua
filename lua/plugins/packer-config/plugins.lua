vim.cmd([[packadd packer.nvim]])
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")

	-- Plenary
	use("nvim-lua/plenary.nvim")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/playground")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" }, { "kdheepak/lazygit.nvim" } },
	})

	-- Tree
	use("nvim-tree/nvim-web-devicons")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
	})

	-- NightFox
	use("EdenEast/nightfox.nvim")
	use("sainnhe/gruvbox-material")

	-- LSP Configuration & Plugins
	use({
		"neovim/nvim-lspconfig",
		requires = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"j-hui/fidget.nvim",
			"mfussenegger/nvim-dap",
		},
	})

	-- Completion
	use("hrsh7th/nvim-cmp")
	use("tami5/lspsaga.nvim")
	use("hrsh7th/cmp-nvim-lsp")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")
	use("onsails/lspkind.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("rafamadriz/friendly-snippets")

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani142/nvim-web-devicons", opt = true },
	})

	-- ToggleTerm
	use("akinsho/toggleterm.nvim")

	-- Indent Blankline
	use("lukas-reineke/indent-blankline.nvim")

	-- Barbar
	use({
		"romgrk/barbar.nvim",
		requires = "nvim-tree/nvim-web-devicons",
	})

	--  Autopairs
	use("windwp/nvim-autopairs")

	-- Colorizer
	use("norcalli/nvim-colorizer.lua")

	-- Truezen
	use("Pocco81/true-zen.nvim")

	-- Startup
	use("startup-nvim/startup.nvim")

	-- Comment
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Notify
	use("rcarriga/nvim-notify")

	-- Neorg
	use({
		"nvim-neorg/neorg",
		-- run = ":Neorg sync-parsers",
	})

	-- Lazygit
	use("kdheepak/lazygit.nvim")

	-- Vim Surround
	use("tpope/vim-surround")
end)
