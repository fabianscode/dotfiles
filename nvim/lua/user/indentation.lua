-- from: https://github.com/ldelossa/dotfiles/blob/master/config/nvim/lua/configs/indent-blankline.lua

require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}

vim.g.indent_blankline_char = "│"
vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_filetype_exclude = {
    "startify", "dashboard", "dotooagenda", "log", "fugitive", "gitcommit",
    "packer", "vimwiki", "markdown", "json", "txt", "vista", "help",
    "todoist", "NvimTree", "peekaboo", "git", "TelescopePrompt", "undotree",
    "flutterToolsOutline", "" -- for all buffers without a file type
}

vim.g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
    "class", "function", "method", "block", "list_literal", "selector",
    "^if", "^table", "if_statement", "while", "for", "field_declaration_list",
}

vim.cmd('autocmd CursorMoved * IndentBlanklineRefresh')

