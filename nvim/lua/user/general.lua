local o = vim.o

o.clipboard = "unnamedplus"
o.ignorecase = true
o.number = true
o.relativenumber = true

o.splitbelow = true
o.splitright = true

o.updatetime = 100
o.encoding = "utf-8"
o.cmdheight = 1

vim.cmd [[
	set autoindent
	set noexpandtab
	set tabstop=4
	set shiftwidth=4
	set mouse=

	highlight Cursor guifg=white guibg=white
	highlight iCursor guifg=white guibg=white

	au VimEnter * set guicursor=i-n-v-c:block-Cursor,ci-ve:ver25-iCursor
]]

