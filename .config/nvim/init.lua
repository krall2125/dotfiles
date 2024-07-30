require("startup.autocommands")
require("startup.beforeplugins")
require("startup.plugins")
require("startup.afterplugins")

-- keymaps.lsp gets included in config.lsp
-- because it's a special kind of keymaps (nvim-cmp keymaps)
require("keymaps.neovim")
require("keymaps.telescope")
require("keymaps.cloak")
require("keymaps.trouble")
require("keymaps.luasnip")
require("keymaps.trident")
