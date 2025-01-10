-- Set up Mason
require("config.mason")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function (ev)
		require("config.keys.lsp")(ev)
	end
})

local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers({
	function (server)
		lspconfig[server].setup({})
	end,
})

vim.diagnostic.config({
	update_in_insert = true,
	virtual_text = true
})

local luasnip = require("luasnip")

local cmp = require("cmp")

local lspkind = require("lspkind")

-- set up nvim-cmp
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

	mapping = require("config.keys.nvim-cmp")(cmp, luasnip),

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),

	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text",
			menu = ({
				buffer = "[Buffer]",
				nvim_lsp = "[LSP]",
				luasnip = "[LuaSnip]",
				nvim_lua = "[Lua]",
				path = "[Path]"
			})
		}),
	}
})
