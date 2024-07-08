vim.api.nvim_create_augroup("jang", {clear = true})

--vim.api.nvim_create_autocmd({"ColorScheme"}, {
--    group = "jang",
--    pattern = "*",
--    callback = function ()
--        vim.cmd("hi Normal guibg=none")
--        vim.cmd("hi NormalNC guibg=none")
--        vim.cmd("hi NonText guibg=none")
--        vim.cmd("hi NvimTreeNormal guibg=none")
--        vim.cmd("hi StatusLine guibg=none")
--        vim.cmd("hi StatusLineNC guibg=none")
--        vim.cmd("hi NvimTreeStatusLineNC guibg=none")
--        vim.cmd("hi NvimTreeCursorColumn guibg=none")
--        vim.cmd("hi NvimTreeWinSeparator guibg=none")
--        vim.cmd("hi NvimTreeWindowPicker guibg=none")
--        vim.cmd("hi NvimTreeCursorLine guibg=none")
--        vim.cmd("hi FloatBorder guibg=none")
--        vim.cmd("hi NormalFloat guibg=none")
--        vim.cmd("hi CursorColumn guibg=none")
--    end
--})

vim.api.nvim_create_autocmd({"CursorMoved", "CursorMovedI"}, {
    group = "jang",
    pattern = "*",
    callback = function ()
        vim.schedule(function()
            vim.cmd("noh")
        end)
    end
})

vim.api.nvim_create_autocmd({"TextYankPost"}, {
    group = "jang",
    pattern = "*",
    callback = function ()
        vim.highlight.on_yank()
    end
})
