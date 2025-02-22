return {
	"alexghergh/nvim-tmux-navigation",
	config = function()
		local nvim_tmux_nav = require('nvim-tmux-navigation')

		nvim_tmux_nav.setup({})

		vim.keymap.set('n', "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>")
		vim.keymap.set('n', "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>")
		vim.keymap.set('n', "<C-k>", "<cmd>NvimTmuxNavigateUp<CR>")
		vim.keymap.set('n', "<C-l>", "<cmd>NvimTmuxNavigateRight<CR>")
		vim.keymap.set('n', "<C-\\>", "<cmd>NvimTmuxNavigateLastActive<CR>")
	end
}
