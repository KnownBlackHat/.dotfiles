return {
	"folke/trouble.nvim",
	tag = "v2.10.0",
	cmd = { "Trouble", "TroubleToggle" },
	opts = { icons = true },
	keys = {
		{
			"<leader>tt",
			function()
				require("trouble").toggle()
			end,
		},
		{
			"]t",
			function()
				require("trouble").next({ skip_groups = true, jump = true })
			end,
		},
		{
			"[t",
			function()
				require("trouble").previous({ skip_groups = true, jump = true })
			end,
		},
	},
}
