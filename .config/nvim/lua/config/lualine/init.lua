local function shit()
	local cur_line = vim.fn.line(".")
	local all_lines = vim.api.nvim_buf_line_count(vim.api.nvim_get_current_buf())
	local result = string.format("%d%s ☰ %d/%d ln : %d", cur_line / all_lines * 100, "%%",cur_line, all_lines, vim.fn.virtcol("."))
	return result
end

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = ""},
		section_separators = { left = "", right = ""},
		always_divide_middle = true,
	},
	sections = {
		lualine_b = {"FugitiveHead"},
		lualine_c = {"filename"},
		lualine_x = {"string.format(\"%s (neovim)\", vim.bo.filetype)"},
		lualine_y = {"string.format(\"%s[%s]\", vim.bo.fileencoding, vim.bo.fileformat)"},
		lualine_z = {shit}
	},
})
