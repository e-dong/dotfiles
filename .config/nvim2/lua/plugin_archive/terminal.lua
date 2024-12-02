return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-j>]],
		})
		vim.keymap.set("t", "<C-h>", [[<C-\><C-n>]], { desc = "Escape terminal mode" })
		vim.keymap.set("t", "<C-h>k", [[<C-\><C-n><C-w>k]])
		vim.keymap.set("t", "<C-h>j", [[<C-\><C-n><C-w>j]])
		vim.keymap.set("t", "<C-h>h", [[<C-\><C-n><C-w>h]])
		vim.keymap.set("t", "<C-h>l", [[<C-\><C-n><C-w>l]])
	end,
}
