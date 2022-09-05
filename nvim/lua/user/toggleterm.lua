require("toggleterm").setup {
	open_mapping = [[<c-t>]],
	hide_numbers = true,
	size = 60,
	start_in_insert = true,
	insert_mappings = true,
	terminal_mappings = true,
	persist_size = true,
	persist_mode = true,
	direction = 'vertical',
	close_on_exit = true,
	shell = vim.o.shell,
	auto_scroll = true,
	float_opts = {
		-- The border key is *almost* the same as 'nvim_open_win'
		-- see :h nvim_open_win for details on borders however
		-- the 'curved' border is a custom border type
		-- not natively supported but implemented in this plugin.
		border = "vertical",
		width = 0,
		height = 0,
		winblend = 0,
	},
}
