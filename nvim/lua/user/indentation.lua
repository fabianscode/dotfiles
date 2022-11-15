vim.opt.list = true
-- vim.opt.listchars:append "space:-"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

vim.cmd[[
	highlight IndentBlanklineContextChar guifg=#61AFEF gui=nocombine
	hi CursorLineNr guifg=#61AFEF
	hi CursorLineNR cterm=bold
	set cursorline
	set cursorlineopt=number
]]


