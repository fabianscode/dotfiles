vim.keymap.set("n", "<Space>", "", {})
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jj", "GO TO HELL!")

vim.keymap.set("n", "L", "o<ESC>")

--vim.keymap.set("n", "<C-d>", "<C-d>z.")
--vim.keymap.set("n", "<C-u>", "<C-u>z.")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


--general
vim.keymap.set("n", "<F4>", ":set hlsearch!<CR>", opts)

vim.keymap.set("n", "<leader>f", ":CtrlP .<CR>")
vim.keymap.set("n", "<leader>r", ":CtrlPMRUFiles<CR>")
vim.keymap.set("n", "<leader>g", ":Ag ")
vim.keymap.set("n", "<leader>e", ":Ex<CR>")


vim.keymap.set("n", "<leader>h", require("harpoon.ui").toggle_quick_menu)

vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file)
vim.keymap.set("n", "<leader>n", require("harpoon.ui").nav_next)
vim.keymap.set("n", "<leader>p", require("harpoon.ui").nav_prev)

vim.keymap.set("n", "<C-h>", ":lua require(\"harpoon.ui\").nav_file(1)<CR>", opts)
vim.keymap.set("n", "<C-j>", ":lua require(\"harpoon.ui\").nav_file(2)<CR>", opts)
vim.keymap.set("n", "<C-k>", ":lua require(\"harpoon.ui\").nav_file(3)<CR>", opts)
vim.keymap.set("n", "<C-l>", ":lua require(\"harpoon.ui\").nav_file(4)<CR>", opts)

vim.keymap.set("i", "<C-l>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("s", "<C-l>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("i", "<C-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
vim.keymap.set("s", "<C-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

-- show diffs in current branch
vim.keymap.set("n", "<leader>dg", ":DiffviewFileHistory <CR>", opts)

-- open common files quickly
vim.keymap.set("n", "<leader><leader>e", ":cd ~/.config/nvim <CR>", opts)


vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
vim.keymap.set("n", "ga", ":lua vim.lsp.buf.code_action()<CR>", opts)
vim.keymap.set("n", "gf", ":lua vim.lsp.buf.format()<CR>", opts)
