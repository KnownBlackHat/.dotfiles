return {
	{
		"stevearc/conform.nvim",
		tag = "v8.4.0",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					python = { "isort", "black" },
                    rust = {"rustfmt"},
                    c = {"clang-format"},
                    cpp = {"clang-format"},
                    sh = {"shfmt"},
                    bash = {"shfmt"},
                    --
					-- Use a sub-list to run only the first available formatter
                    -- "first available" formatter only
                    javascript = { "prettierd", "prettier", stop_after_first = true },
                    typescript = { "prettierd", "prettier", stop_after_first = true },
                    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
                    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
                    json = { "prettierd", "prettier", stop_after_first = true },
                    yaml = { "prettierd", "prettier", stop_after_first = true },
                    html = { "prettierd", "prettier", stop_after_first = true },
                    css = { "prettierd", "prettier", stop_after_first = true },
                    markdown = { "prettierd", "prettier", stop_after_first = true },
                    dart = {}, -- falls back to the LSP (flutter-tools)

                    ["*"] = {"trim_whitespace"},
                    ["_"] = {"trim_whitespace"},

				},
				format_on_save = {
					-- These options will be passed to conform.format()
					timeout_ms = 5000,
					lsp_format = "fallback",
				},
			})
			-- vim.api.nvim_create_autocmd("BufWritePre", {
			-- 	pattern = "*",
			-- 	callback = function(args)
			-- 		require("conform").format({ bufnr = args.buf, stop_after_first = true })
			-- 	end,
			-- })
		end,
	},
}
