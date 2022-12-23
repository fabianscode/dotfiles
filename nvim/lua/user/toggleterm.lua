require("toggleterm").setup {
	open_mapping = [[<c-t>]],
	hide_numbers = true,
	size = vim.o.columns * 0.45,

	start_in_insert = true,
	insert_mappings = true,
	terminal_mappings = true,
	persist_size = true,
	persist_mode = true,

	direction = "vertical",
	close_on_exit = true,
	shell = vim.o.shell,
	auto_scroll = true,

	float_opts = {
		border = "single",
		width = 100,
		height = 40,
		winblend = 0,
	},
}
