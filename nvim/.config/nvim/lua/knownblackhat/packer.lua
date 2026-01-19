vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use({
		"ThePrimeagen/99",
		config = function()
			local _99 = require("99")

			-- For logging
			local cwd = vim.uv.cwd()
			local basename = vim.fs.basename(cwd)

			_99.setup({
				logger = {
					level = _99.DEBUG,
					path = "/tmp/" .. basename .. ".99.debug",
					print_on_error = true,
				},
				md_files = {
					"AGENT.md",
				},
			})

			-- Keymaps
			vim.keymap.set("n", "<leader>9f", function()
				_99.fill_in_function()
			end)

			vim.keymap.set("v", "<leader>9v", function()
				_99.visual()
			end)

			vim.keymap.set("v", "<leader>9s", function()
				_99.stop_all_requests()
			end)
		end,
	})

	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup()
		end,
	})
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/playground")
	use("mbbill/undotree")
	use("tpope/vim-commentary")
	use("github/copilot.vim")
	use("vim-airline/vim-airline-themes")
	use("vim-airline/vim-airline")
	-- use('mattn/emmet-vim')
	use("tpope/vim-fugitive")
	use("nvim-treesitter/nvim-treesitter-context")
	use("terryma/vim-multiple-cursors")
	use("lukas-reineke/indent-blankline.nvim")
	use("dstein64/vim-startuptime")
	use({
		"akinsho/flutter-tools.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		},
	})
end)
