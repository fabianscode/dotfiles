vim.keymap.set("i", "jj", "<ESC>")

vim.keymap.set("n", "<C-l>", "o<ESC>")
vim.keymap.set("n", "<C-k>", "o")

vim.keymap.set("n", "f", require("telescope.builtin").find_files)
