return function(cmp, luasnip)
    return {
        ['<Tab>'] = cmp.mapping(function (fallback)
            if cmp.visible() then
                cmp.confirm({select = true})
            elseif luasnip.expandable() then
                luasnip.expand()
            else
                fallback()
            end
        end, {"i", "s"}),
        ['<Up>'] = cmp.mapping(function (fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, {"i", "s"}),
        ['<Down>'] = cmp.mapping(function (fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, {"i", "s"}),
        ['<S-Up>'] = cmp.mapping(function (fallback)
            if cmp.visible() then
                cmp.close()
                fallback()
            else
                fallback()
            end
        end, {"i", "s"}),
        ['<S-Down>'] = cmp.mapping(function (fallback)
            if cmp.visible() then
                cmp.close()
                fallback()
            else
                fallback()
            end
        end, {"i", "s"}),
    }
end
