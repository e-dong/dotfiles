-- terminal mode
vim.keymap.set("t", "<ESC><ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.api.nvim_create_autocmd("TermOpen", {
	callback = function()
		vim.opt.number = false
		vim.wo.relativenumber = false
		vim.opt.signcolumn = "no"
	end,
})

-- TODO: Add auto command to delete terminal buffer on nvim quit/exit
