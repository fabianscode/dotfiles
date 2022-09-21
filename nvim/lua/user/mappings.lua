local opts = { noremap = true, silent = true }

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


--dap

vim.keymap.set("n", "<C-b>", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
vim.keymap.set("n", "<C-c>", ":lua require'dap'.continue()<CR>", opts)
vim.keymap.set("n", "<C-s>", ":lua require'dap'.step_over()<CR>", opts)
vim.keymap.set("n", "<C-o>", ":lua require'dap'.step_into()<CR>", opts)
vim.keymap.set("n", "<C-x>", ":lua require'dap'.close()<CR>", opts)
vim.keymap.set("n", "<C-i>", ":lua require'dap'.repl.open()<CR>", opts)

--luasnip
vim.keymap.set("i", "<c-l>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("s", "<c-l>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("i", "<c-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
vim.keymap.set("s", "<c-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

--general
vim.keymap.set("n", "<F4>", ":set hlsearch!<CR>", opts)
