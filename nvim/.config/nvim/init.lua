require("knownblackhat.mapping")
require("knownblackhat.set")
-- print("Welcome Back Sir!")

require("knownblackhat.lazy_init")
local augroup = vim.api.nvim_create_augroup
local KnownblackhatGroup = augroup("knownblackhat", {})

local autocmd = vim.api.nvim_create_autocmd

-- autocmd({ "BufWritePre" }, {
-- 	group = KnownblackhatGroup,
-- 	pattern = "*",
-- 	command = [[%s/\s\+$//e]],
-- })

autocmd("LspAttach", {
	group = KnownblackhatGroup,
	callback = function(e)
		local opts = { buffer = e.buf }
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, opts)
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover({
				border = "rounded",
			})
		end, opts)
		vim.keymap.set("n", "<leader>vws", function()
			vim.lsp.buf.workspace_symbol()
		end, opts)
		vim.keymap.set("n", "<leader>vd", function()
			vim.lsp.buf.open_float()
		end, opts)
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_next()
		end, opts)
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end, opts)
		vim.keymap.set("n", "<leader>vca", function()
			vim.lsp.buf.code_action()
		end, opts)
		vim.keymap.set("n", "<leader>vrr", function()
			vim.lsp.buf.references()
		end, opts)
		vim.keymap.set("n", "<leader>vrn", function()
			vim.lsp.buf.rename()
		end, opts)
		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, opts)
	end,
})
