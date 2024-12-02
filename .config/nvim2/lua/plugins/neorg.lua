return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.summary"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
						},
						default_workspace = "notes",
					},
				},
				-- ["external.hello-world"] = {}
			},
		})
		vim.wo.foldlevel = 99
		vim.wo.conceallevel = 2

    vim.keymap.set("n", "<leader>nc", "<Cmd>Neorg toggle-concealer<CR>", { desc = "[N]eorg toggle concealer"})
	end,

	dependencies = {
		{ dir = "~/notes/utils" },
	},
}
