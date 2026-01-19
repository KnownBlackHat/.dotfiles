return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"plenary",
	},

	config = function()
        require('telescope').setup({})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>f", builtin.find_files, {})
		vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
		vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, {})

		vim.keymap.set("n", "<leader>gd", function()
			builtin.lsp_definitions({ jump_type = "never" })
		end, {})

		vim.keymap.set("n", "<leader>W", function()
            local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word})
		end)


		vim.keymap.set("n", "<leader>w", function()
            local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word})
		end)


		vim.keymap.set("n", "<leader>s", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)

		vim.keymap.set("n", "<leader>b", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				previewer = false,
			}))
		end, { desc = "Fuzzily search current buffer" })

		vim.keymap.set("n", "<leader>h", builtin.help_tags, {})

		require("telescope").setup({
			defaults = {
				prompt_prefix = "🔍 ",
				file_ignore_patterns = { "node_modules/*", "build/*" },
			},
		})
	end,
}
