return {
	"rmagatti/auto-session",
	lazy = false,
	dependencies = {
		"nvim-telescope/telescope.nvim", -- Only needed if you want to use session lens
	},
	config = function()
		require("auto-session").setup({
			auto_restore = false,
			suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		})

		vim.keymap.set("n", "<leader>Ss", "<Cmd>SessionSave<CR>", { desc = "[S]ession [S]ave" })
		vim.keymap.set("n", "<leader>Sr", "<Cmd>SessionRestore<CR>", { desc = "[S]ession [R]estore" })
	end,
}
