return {
	"tpope/vim-fugitive",
	cmd = { "Git", "G", "Gdiffsplit", "Gvdiffsplit", "Gread", "Gwrite", "GBrowse" },
	keys = {
		{ "<leader>gs", "<cmd>Git<CR>" },
		{ "<leader>gr", "<cmd>diffget //2<CR>" },
		{ "<leader>gu", "<cmd>diffget //3<CR>" },
	},
}
