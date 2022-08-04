require ('nvim-treesitter.configs').setup {
	ensure_installed = { "c", "lua", "rust", "typescript", "java", "bash" },

	sync_install = false,
	auto_install = true,

	ignore_install = { 
		"javascript" 
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
