local function smart_path()
	local name = vim.api.nvim_buf_get_name(0)
	if name == "" then
		return "[No Name]"
	end

	local abs = vim.fn.fnamemodify(name, ":p")
	local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ":p")
	local path = abs:sub(1, #cwd) == cwd and abs:sub(#cwd + 1) or abs

	if vim.bo.modified then
		path = path .. " [+]"
	end
	if vim.bo.readonly or not vim.bo.modifiable then
		path = path .. " [-]"
	end
	return path
end

return {
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		opts = {
			options = { icons_enabled = true, globalstatus = true },
			sections = {
				lualine_c = { smart_path },
			},
		},
	},
}
