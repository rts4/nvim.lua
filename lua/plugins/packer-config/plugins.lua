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
	use("nvim-telescope/telescope-ui-select.nvim")
	use({
		"AckslD/nvim-neoclip.lua",
		requires = {
			{ "kkharji/sqlite.lua", module = "sqlite" },
			{ "nvim-telescope/telescope.nvim" },
		},
	})
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})
	use("nvim-telescope/telescope-packer.nvim")

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
	use("mfussenegger/nvim-dap")
	use({
		"rcarriga/nvim-dap-ui",
		requires = { "mfussenegger/nvim-dap" },
	})
	use({ "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } })
	use({
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npm run compile",
	})
	use("theHamsta/nvim-dap-virtual-text")

	-- Completion
	use("hrsh7th/nvim-cmp")
	use("tami5/lspsaga.nvim")
	use("hrsh7th/cmp-nvim-lsp")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")
	use("onsails/lspkind.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("rafamadriz/friendly-snippets")

	-- Inlay Hint
	use("simrat39/inlay-hints.nvim")

	-- Rust Tools
	use("simrat39/rust-tools.nvim")

	-- Crates
	use({
		"Saecki/crates.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani142/nvim-web-devicons", opt = true },
	})

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

	-- Trouble
	use("folke/trouble.nvim")

	-- Git signs
	use("lewis6991/gitsigns.nvim")

	-- Neodev
	use("folke/neodev.nvim")

	-- Dressing
	use("stevearc/dressing.nvim")

	-- Mind.nvim
	use({
		"phaazon/mind.nvim",
		branch = "v2.2",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Vim Navigator
	use("christoomey/vim-tmux-navigator")

	-- tmuxline.vim
	use("edkolev/tmuxline.vim")
end)
