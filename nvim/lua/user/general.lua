local o = vim.o

o.clipboard = "unnamedplus"
o.ignorecase = true
o.number = true
o.relativenumber = true

o.splitbelow = true
o.splitright = true

o.termguicolors = true
o.updatetime = 100
o.encoding = "utf-8"
o.cmdheight = 1

vim.cmd [[
	set autoindent
	set noexpandtab
	set tabstop=4
	set shiftwidth=4
	set mouse=
]]
