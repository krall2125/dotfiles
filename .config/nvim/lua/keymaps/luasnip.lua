local ls = require("luasnip")

vim.keymap.set({"n", "s", "i"}, "<C-Right>", function ()
    ls.jump(1)
end, {silent = true})

vim.keymap.set({"n", "s", "i"}, "<C-Left>", function ()
    ls.jump(-1)
end, {silent = true})
