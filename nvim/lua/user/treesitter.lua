require ('nvim-treesitter.configs').setup {
	ensure_installed = { "c", "lua", "rust", "typescript", "java" },

	sync_install = false,
	auto_install = false,

	ignore_install = { 
		"javascript",
		"python"
	},
	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = false,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
		colors = {},
		termcolors = {}
	}
}
