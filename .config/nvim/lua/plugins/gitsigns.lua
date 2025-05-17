return {
	"lewis6991/gitsigns.nvim",
	config = function()
		-- setup gitsigns with default properties
		local gitsigns = require("gitsigns")
    gitsigns.setup({})

		-- Set a vim motion to <Space> + g + h to preview changes to the file under the cursor in normal mode
		vim.keymap.set("n", "<leader>gh",gitsigns.preview_hunk, { desc = "[G]it Preview [H]unk" })
		vim.keymap.set({"n", "v"}, "<leader>gs", gitsigns.stage_hunk, { desc = "[G]it [S]tage Hunk" })
		vim.keymap.set({"n", "v"}, "<leader>gr", gitsigns.reset_hunk, { desc = "[G]it [R]eset Hunk" })
	end,
}
