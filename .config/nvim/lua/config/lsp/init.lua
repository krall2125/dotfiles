local luasnip = require("luasnip")
local cmp = require("cmp")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup({})
require("mason-lspconfig").setup({})

local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers({
    function (server)
        lspconfig[server].setup({
            capabilities = capabilities
        })
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
