local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {silent = true})
vim.keymap.set("n", "<leader>fc", builtin.colorscheme, {silent = true})
vim.keymap.set("n", "<leader>ft", builtin.treesitter, {silent = true})
vim.keymap.set("n", "<leader>g", builtin.live_grep, {silent = true})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {silent = true})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {silent = true})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {silent = true})
vim.keymap.set("n", "<leader>fp", builtin.oldfiles, {silent = true})
vim.keymap.set("n", "<leader>fk", builtin.keymaps, {silent = true})

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
