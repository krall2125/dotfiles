-- Move around wrapped lines
vim.keymap.set("n", "<Down>", "gj", {noremap = true, silent = true})
vim.keymap.set("n", "<Up>", "gk", {noremap = true, silent = true})
vim.keymap.set("v", "<Down>", "gj", {noremap = true, silent = true})
vim.keymap.set("v", "<Up>", "gk", {noremap = true, silent = true})

vim.keymap.set("n", "j", "gj", {noremap = true, silent = true})
vim.keymap.set("n", "k", "gk", {noremap = true, silent = true})
vim.keymap.set("v", "j", "gj", {noremap = true, silent = true})
vim.keymap.set("v", "k", "gk", {noremap = true, silent = true})

vim.keymap.set("i", "<Down>", "<C-o>gj", {noremap = true, silent = true})
vim.keymap.set("i", "<Up>", "<C-o>gk", {noremap = true, silent = true})

-- Move around split panes

vim.keymap.set("n", "<leader>l", "<C-w><Right>")
vim.keymap.set("n", "<leader>h", "<C-w><Left>")
vim.keymap.set("n", "<leader>k", "<C-w><Up>")
vim.keymap.set("n", "<leader>j", "<C-w><Down>")

-- Split panes

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")

-- Indent and outdent code

vim.keymap.set("n", "<lt>", "<lt><lt>", { silent = true, desc = "Outdent" })

vim.keymap.set("n", ">", ">>", { silent = true, desc = "Indent" })

vim.keymap.set("v", "<lt>", "<lt>gv", { silent = true, desc = "Indent" })

vim.keymap.set("v", ">", ">gv", { silent = true, desc = "Indent" })

-- Move around when nvim-cmp is shown

vim.keymap.set("i", "<S-Up>", "<Up>")
vim.keymap.set("i", "<S-Down>", "<Down>")
vim.keymap.set("i", "<S-Tab>", "<Tab>")

-- Move blocks of code

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Text deletion

vim.keymap.set("v", "d", "\"_d")
vim.keymap.set("n", "dd", "\"_dd")

-- Open netrw
vim.keymap.set("n", "<leader>nx", "<cmd>Explore<CR>")
