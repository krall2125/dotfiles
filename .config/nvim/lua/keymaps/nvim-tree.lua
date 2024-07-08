vim.keymap.set("n", "<leader>nt", "<cmd>lua require('nvim-tree.api').tree.toggle({find_file = false, update_root = false, focus = false})<CR>")
vim.keymap.set("n", "<leader>nf", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>nc", "<cmd>NvimTreeCollapse<CR>")
