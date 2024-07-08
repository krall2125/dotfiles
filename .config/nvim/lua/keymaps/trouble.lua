local trouble = require("trouble")

vim.keymap.set("n", "<leader>tt", function ()
    vim.cmd("Trouble diagnostics toggle")
end)

vim.keymap.set("n", "<leader>tf", function ()
    vim.cmd("Trouble diagnostics focus")
end)
