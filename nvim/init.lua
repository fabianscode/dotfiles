-- PLUGINS

local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd(
	"BufWritePost",
	{ command = "source <afile> | PackerCompile", group = packer_group, pattern = "init.lua" }
)

require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "glepnir/dashboard-nvim"
	use "andweeb/presence.nvim"
	use { "ellisonleao/gruvbox.nvim" }
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use "nvim-telescope/telescope-file-browser.nvim"
	use "nvim-treesitter/nvim-treesitter"
	use "nvim-lualine/lualine.nvim"

	use {'neoclide/coc.nvim', branch = 'release'}
end)

-- GENERAL

local o = vim.o

o.clipboard = "unnamedplus"
o.ignorecase = true
o.number = true
o.relativenumber = true
o.shiftwidth = 4
o.splitbelow = true
o.splitright = true
o.tabstop = 4
o.termguicolors = true
o.updatetime = 100

-- coc
o.encoding = "utf-8"
o.cmdheight = 2

-- colorscheme
o.background = "dark" 
vim.cmd([[colorscheme gruvbox]])

-- PLUGIN SETUP

-- from https://github.com/mathletedev/dotfiles/blob/main/.config/nvim/init.lua
require("presence"):setup {
	neovim_image_text = "Neovim",
	presence_log_level = "error",
	presence_editing_text = "Editing « %s »",
	presence_file_explorer_text = "Browsing files",
	presence_reading_text = "Reading  « %s »",
	presence_workspace_text = "Working on « %s »",
}

local db = require "dashboard"
db.custom_header = {
	"",
	"",
	"",
	"",
	" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
	" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
	" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
	" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
	" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
	" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
	"",
	"",
	"",
}

db.custom_center = {
	{
		icon = " ",
		desc = "New File            ",
		action = "DashboardNewFile",
	},
	{
		icon = " ",
		desc = "Browse Files        ",
		action = "Telescope file_browser",
	},
	{
		icon = " ",
		desc = "Find File           ",
		action = "Telescope find_files",
	},
	{
		icon = " ",
		desc = "Configure Neovim    ",
		action = "edit ~/.config/nvim/lua/init.lua",
	},
	{
		icon = " ",
		desc = "Exit Neovim              ",
		action = "quit",
	},
}

require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = true,
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = false, 
	contrast = "", 
	overrides = {}
})

vim.cmd("colorscheme gruvbox")


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
vim.keymap.set("n", "f", require("telescope.builtin").find_files)

local custom_gruvbox = require'lualine.themes.gruvbox'

custom_gruvbox.normal.c.bg = '#112244'

require("lualine").setup {
	options = {
		theme = custom_gruvbox,
		component_separators = "|",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
		lualine_b = { "filename", "branch", { "diff", colored = false } },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { "filetype", "progress" },
		lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	}
}


-- KEYBINDINGS

vim.keymap.set("i", "jj", "<ESC>")

vim.keymap.set("n", "<C-l>", "o<ESC>")
vim.keymap.set("n", "<C-k>", "o")

-- coc 
local map = vim.api.nvim_set_keymap

map("n", "<F6>", "<Plug>(coc-rename)", { silent = true })
map("n", "gi", "<Plug>(coc-implementation)", { silent = true })

map("n", "<F3>", "<Plug>(coc-format-selected)", {})
map("x", "<F3>", "<Plug>(coc-format-selected)", {})

vim.cmd[[
	inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm()
								  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

	inoremap <silent><expr> <C-SPACE> coc#pum#visible() ? coc#pum#confirm()
								  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

	inoremap <expr><C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-h>"

	inoremap <expr><C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
]]
