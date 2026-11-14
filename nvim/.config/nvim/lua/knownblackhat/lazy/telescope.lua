return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	-- lazy = false,
	-- priority = 1000,

	opts = {
		defaults = {
			prompt_prefix = "🔍 ",
			file_ignore_patterns = { "node_modules/*", "build/*" },
		},
	},
	keys = {
		{
			"<leader>f",
			function()
				require("telescope.builtin").find_files()
			end,
		},
		{
			"<leader>gf",
			function()
				require("telescope.builtin").git_files()
			end,
		},
		{
			"<leader>ds",
			function()
				require("telescope.builtin").lsp_document_symbols()
			end,
		},
		{
			"<leader>h",
			function()
				require("telescope.builtin").help_tags()
			end,
		},
		{
			"<leader>gd",
			function()
				require("telescope.builtin").lsp_definitions({ jump_type = "never" })
			end,
		},
		{
			"<leader>w",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })
			end,
		},
		{
			"<leader>W",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.expand("<cWORD>") })
			end,
		},
		{
			"<leader>s",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
			end,
		},
		{
			"<leader>b",
			function()
				require("telescope.builtin").current_buffer_fuzzy_find(
					require("telescope.themes").get_dropdown({ previewer = false })
				)
			end,
			desc = "Fuzzily search current buffer",
		},
	},
}
