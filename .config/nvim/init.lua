-- Set leader key before any requires -> This fixes the issue of keymaps using the leader not working
vim.g.mapleader = " "

require("config.keys.neovim")

vim.opt.clipboard = "unnamedplus"
vim.opt.smarttab = true
vim.opt.expandtab = false
vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

vim.opt.list = true

vim.opt.tabstop = 8
vim.opt.shiftwidth = 8

vim.opt.background = "dark"

vim.opt.guicursor = "n-v-c-i:block"

-- Enforce 8 sized tabs in all files
vim.api.nvim_create_autocmd({"FileType"}, {
	pattern = "*",
	command = "setlocal noexpandtab tabstop=8 shiftwidth=8"
})

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
	pattern = "*.h",
	command = "set filetype=c"
})

-- Load plugins
require("config.lazy")
require("config.gruvbox")
require("config.lualine")
require("config.harpoon")
require("config.treesitter")
require("config.telescope")
require("config.lsp")

vim.cmd.colorscheme("gruvbox")
