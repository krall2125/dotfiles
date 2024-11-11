return function (cmp, luasnip)
	return cmp.mapping.preset.insert({
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<Tab>"] = cmp.mapping(function (fallback)
			if cmp.visible() then
				cmp.confirm({select = true})
			else
				fallback()
			end
		end, {"i", "s"}),
		["<Down>"] = cmp.mapping(function (fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, {"i", "s"}),
		["<Up>"] = cmp.mapping(function (fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, {"i", "s"}),
		["<C-Left>"] = cmp.mapping(function (fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {"i", "s"}),
		["<C-Right>"] = cmp.mapping(function (fallback)
			if luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, {"i", "s"}),
	})
end
