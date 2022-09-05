vim.keymap.set("i", "jj", "<ESC>")

vim.keymap.set("n", "<C-l>", "o<ESC>")

vim.keymap.set("n", "f", require("telescope.builtin").find_files)

vim.keymap.set("n", "J", "}")
vim.keymap.set("n", "K", "{")

vim.keymap.set("v", "J", "}")
vim.keymap.set("v", "K", "{")

vim.keymap.set("n", "<C-j>", "3j")
vim.keymap.set("n", "<C-k>", "3k")

vim.keymap.set("v", "<C-j>", "3j")
vim.keymap.set("v", "<C-k>", "3k")
