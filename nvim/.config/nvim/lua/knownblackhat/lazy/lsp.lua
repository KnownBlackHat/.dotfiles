return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		-- conform loads lazily from its own file
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"j-hui/fidget.nvim",
	},

	config = function()
		local cmp = require("cmp")
		local cmp_lsp = require("cmp_nvim_lsp")

		-- Applied to every server, so cmp completion works everywhere
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(),
			cmp_lsp.default_capabilities()
		)
		vim.lsp.config("*", { capabilities = capabilities })

		-- Per-server settings (replaces the old `handlers` block)
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
					format = {
						enable = true,
						defaultConfig = {
							indent_style = "space",
							indent_size = "2",
						},
					},
				},
			},
		})

		vim.lsp.config("tailwindcss", {
			filetypes = {
				"html",
				"css",
				"scss",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue",
				"svelte",
				"heex",
			},
		})

		vim.lsp.config("zls", {
			settings = {
				zls = {
					enable_inlay_hints = true,
					enable_snippets = true,
					warn_style = true,
				},
			},
		})
		vim.g.zig_fmt_parse_errors = 0
		vim.g.zig_fmt_autosave = 0

		-- pyright: type checking + completion, but NO go-to-definition
		vim.lsp.config("pyright", {
			on_init = function(client)
				client.server_capabilities.definitionProvider = false
			end,
			settings = {
				python = { analysis = { autoImportCompletions = true } },
			},
		})

		-- pylsp: jedi completion + definitions only
		vim.lsp.config("pylsp", {
			settings = {
				pylsp = {
					plugins = {
						jedi_completion = { enabled = true },
						jedi_definition = {
							enabled = true,
							follow_imports = true,
							follow_builtin_imports = true,
						},
						jedi_hover = { enabled = false },
						pycodestyle = { enabled = false },
						pyflakes = { enabled = false },
						mccabe = { enabled = false },
						pylint = { enabled = false },
						autopep8 = { enabled = false },
						yapf = { enabled = false },
					},
				},
			},
		})

		require("fidget").setup({})
		require("mason").setup({ PATH = "append" })
		require("mason-lspconfig").setup({
			-- LSP servers only. Formatters go in mason-tools.lua
			ensure_installed = {
				"lua_ls",
				"vtsls",
				"tailwindcss",
				"pylsp",
				"pyright",
			},
			-- rustaceanvim manages rust-analyzer itself
			automatic_enable = { exclude = { "rust_analyzer" } },
		})

		local cmp_select = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
			}, {
				{ name = "buffer" },
			}),
			window = {
				completion = cmp.config.window.bordered({ border = "rounded" }),
				documentation = cmp.config.window.bordered({ border = "rounded" }),
			},
		})

		vim.diagnostic.config({
			virtual_text = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = "always",
				header = "",
				prefix = "",
			},
		})
	end,
}
