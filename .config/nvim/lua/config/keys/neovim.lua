vim.keymap.set("n", "<leader>nx", ":Explore<CR>")

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("v", "j", "gj")
vim.keymap.set("v", "k", "gk")

vim.keymap.set("i", "<Down>", "<C-o>gj")
vim.keymap.set("i", "<Up>", "<C-o>gk")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "dd", "\"_dd")
vim.keymap.set("v", "d", "\"_d")

vim.keymap.set("n", "<lt>", "<lt><lt>")
vim.keymap.set("n", ">", ">>")
vim.keymap.set("v", "<lt>", "<lt>gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set({"n", "i", "v"}, "<Esc>", "<Esc>:noh<CR>", {silent = true})

vim.keymap.set("i", "<S-Down>", "<C-e><Down>")
vim.keymap.set("i", "<S-Up>", "<C-e><Up>")
vim.keymap.set("i", "<S-Left>", "<C-e><Left>")
vim.keymap.set("i", "<S-Right>", "<C-e><Right>")
