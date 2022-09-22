local telescope = require "telescope"

telescope.setup {
	defaults = {
		mappings = { n = { ["o"] = require("telescope.actions").select_default } },
		initial_mode = "normal",
		hidden = true,
		file_ignore_patterns = { ".git/", "node_modules/", "target/" },
	},
	extensions = { file_browser = { hidden = true } },
}

telescope.load_extension "file_browser"




vim.keymap.set("n", "<C-f>", require("telescope.builtin").find_files)
vim.keymap.set("n", "<C-g>", require("telescope.builtin").live_grep)
