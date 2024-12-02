return {
	"sindrets/diffview.nvim",
	config = function()
		require("diffview").setup()
		vim.keymap.set("n", "<leader>dv", "<cmd>DiffviewOpen<CR>", { desc = "Opens git diff view" })
		vim.keymap.set("n", "<leader>dx", "<cmd>DiffviewClose<CR>", { desc = "Closes git diff view" })
		vim.keymap.set("n", "<leader>dh", "<cmd>DiffviewFileHistory<CR>", { desc = "Opens git diff file history" })
		vim.keymap.set("n", "<leader>dr", "<cmd>DiffviewRefresh<CR>", { desc = "Refreshes diff view" })
	end,
}
