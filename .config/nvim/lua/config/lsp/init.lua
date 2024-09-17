local luasnip = require("luasnip")
local cmp = require("cmp")

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "zls", "eslint", "rust_analyzer" }
})

local lspconfig = require("lspconfig")

local on_attach = function (_, bufnr)
    vim.api.nvim_buf_set_var(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    local opts = { buffer = bufnr, noremap = true, silent = true }

    vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>vi', vim.lsp.buf.implementation, opts)
    vim.keymap.set({'n', 'i'}, '<C-S-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>vtd', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>vrn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
end

require("mason-lspconfig").setup_handlers({
    function (server)
        lspconfig[server].setup({on_attach = on_attach})
    end,
})

vim.diagnostic.config({
    update_in_insert = true,
    virtual_text = true
})

local lspkind = require("lspkind")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    snippet = {
        expand = function (args)
            luasnip.lsp_expand(args.body)
        end
    },

    mapping = require("keymaps.lsp")(cmp, luasnip),

    sources = cmp.config.sources({
        {name = "lazydev", group_index = 0},
        {name = "nvim_lsp"},
        {name = "luasnip"},
        {name = "buffer"},
        {name = "path"},
    }),

    formatting = {
        format = lspkind.cmp_format({
            maxwidth = 50,
            ellipsis_char = "...",
            menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[LuaSnip]",
                path = "[Path]",
                lazydev = "[Nvim API]"
            })
        })
    }
})
