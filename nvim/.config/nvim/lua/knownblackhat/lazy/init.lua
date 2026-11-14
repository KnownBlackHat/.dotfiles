return {

	"tpope/vim-commentary",
	"github/copilot.vim",
	-- "vim-airline/vim-airline-themes",
	-- "vim-airline/vim-airline",
	"lukas-reineke/indent-blankline.nvim",

	{
		"akinsho/flutter-tools.nvim",
		ft = "dart",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = true,
	},
}
