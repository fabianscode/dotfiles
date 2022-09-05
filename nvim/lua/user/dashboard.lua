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
		desc = " New File            ",
		action = "DashboardNewFile",
	},
	{
		icon = " ",
		desc = " Browse Files        ",
		action = "Telescope file_browser",
	},
	{
		icon = " ",
		desc = " Find File           ",
		action = "Telescope find_files",
	},
	{
		icon = " ",
		desc = " Configure Neovim    ",
		action = "edit ~/.config/nvim/lua/init.lua",
	},
	{
		icon = " ",
		desc = " Exit Neovim          ",
		action = "quit",
	}
}
