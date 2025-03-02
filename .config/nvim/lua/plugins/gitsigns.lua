return {
	"lewis6991/gitsigns.nvim",
	config = function()
		-- setup gitsigns with default properties
		require("gitsigns").setup({})

		-- Set a vim motion to <Space> + g + h to preview changes to the file under the cursor in normal mode
		vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "[G]it Preview [H]unk" })
		vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", { desc = "[G]it Stage [H]unk" })
	end,
}
