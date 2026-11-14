return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({
				"python",
				"javascript",
				"c",
				"lua",
				"vim",
				"query",
				"markdown",
				"markdown_inline",
				"vimdoc",
			})

			vim.api.nvim_create_autocmd("FileType", {
				callback = function(args)
					local buf = args.buf
					if vim.bo[buf].filetype == "html" then
						return
					end
					local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > 100 * 1024 then
						return
					end
					if pcall(vim.treesitter.start, buf) then
						vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
					end
				end,
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {
			enable = true,
			max_lines = 0,
			multiline_threshold = 20,
			trim_scope = "outer",
			mode = "cursor",
			separator = "-",
		},
	},
}
