vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.isfname:append("@-@")

vim.opt.syntax = "on"

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.g.airline_powerline_fonts = 1

vim.g.nvim_tree_ignore = { ".git", "node_modules", ".cache" }

-- vim.api.nvim_create_autocmd("CursorMoved", {
--     command = ":silent lua vim.diagnostic.open_float()"
-- })

vim.opt.colorcolumn = "80"
vim.g.copilot_enabled = false

vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 25
vim.opt.spell = false
function ColorMyPencils(color)
	color = color or "default"
	vim.cmd.colorscheme(color)

	local palette = {
		bg_float = "#0d1117", -- Deep black-blue for UI elements
		variable = "#00d7ff", -- Electric Blue
		action = "#ffcc00", -- Golden Yellow
		logic = "#ff2a6d", -- Crimson Red
		type = "#39FF14", -- Matrix Green
		comment = "#5f7e97", -- Muted Slate
	}

	-- 1. HUD & UI DEPTH
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = palette.bg_float })
	vim.api.nvim_set_hl(0, "FloatBorder", { fg = palette.variable, bg = "none" })
	vim.api.nvim_set_hl(0, "Pmenu", { bg = palette.bg_float, fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "PmenuSel", { bg = palette.variable, fg = "black", bold = true })

	-- 2. SYNTAX (Multi-Color Balance)
	vim.api.nvim_set_hl(0, "Identifier", { fg = palette.variable }) -- Variables = Blue
	vim.api.nvim_set_hl(0, "Function", { fg = palette.action, bold = true }) -- Functions = Yellow
	vim.api.nvim_set_hl(0, "Statement", { fg = palette.logic, bold = true }) -- if/return = Red
	vim.api.nvim_set_hl(0, "Type", { fg = palette.type, italic = true }) -- Types = Green
	vim.api.nvim_set_hl(0, "String", { fg = palette.type }) -- Strings = Green
	vim.api.nvim_set_hl(0, "Comment", { fg = palette.comment, italic = true })

	-- 3. INTERFACE
	vim.api.nvim_set_hl(0, "LineNr", { fg = palette.comment })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = palette.action, bold = true })
	vim.api.nvim_set_hl(0, "Visual", { bg = "#1e3a5f" })

	-- 4. TREESITTER CONTEXT (Sticky Header)
	vim.api.nvim_set_hl(0, "TreesitterContext", { bg = palette.bg_float })
	vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true, sp = palette.variable })
end

ColorMyPencils()
