-- General Editor Settings --

-- use spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = false

-- scrolloff
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8

-- configure left column
vim.opt.number = true
vim.wo.relativenumber = true
vim.opt.signcolumn = "yes"

-- colors
vim.opt.termguicolors = true

-- keys
vim.opt.backspace = "indent,eol,start"
-- vim.opt.backspace = '2'

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.conceallevel = 0 -- show concealed in markdown files
vim.opt.fileencoding = "utf-8"

-- misc
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
