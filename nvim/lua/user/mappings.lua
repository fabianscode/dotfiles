vim.keymap.set("n", "<Space>", "", {})
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("n", "L", "o<ESC>")

vim.keymap.set("n", "J", "}")
vim.keymap.set("n", "K", "{")
vim.keymap.set("v", "J", "}")
vim.keymap.set("v", "K", "{")

vim.keymap.set("n", "<C-d>", "<C-d>z.")
vim.keymap.set("n", "<C-u>", "<C-u>z.")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--dap
vim.keymap.set("n", "<leader><leader>b", ":PBToggleBreakpoint<CR>", opts)
vim.keymap.set("n", "<C-c>", ":lua require'dap'.continue()<CR>", opts)
vim.keymap.set("n", "<C-o>", ":lua require'dap'.step_over()<CR>", opts)
vim.keymap.set("n", "<C-i>", ":lua require'dap'.step_into()<CR>", opts)
vim.keymap.set("n", "<C-x>", ":lua require'dap'.close()<CR>", opts)


--luasnip
vim.keymap.set("i", "<C-l>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("s", "<C-l>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("i", "<C-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
vim.keymap.set("s", "<C-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)


--general
vim.keymap.set("n", "<F4>", ":set hlsearch!<CR>", opts)

vim.keymap.set("n", "<leader>f", require("telescope.builtin").find_files)
vim.keymap.set("n", "<leader>g", require("telescope.builtin").live_grep)


vim.keymap.set("n", "<leader>h", require("harpoon.ui").toggle_quick_menu)

vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file)
vim.keymap.set("n", "<leader>n", require("harpoon.ui").nav_next)
vim.keymap.set("n", "<leader>p", require("harpoon.ui").nav_prev)

vim.keymap.set("n", "<C-h>", ":lua require(\"harpoon.ui\").nav_file(1)<CR>", opts)
vim.keymap.set("n", "<C-j>", ":lua require(\"harpoon.ui\").nav_file(2)<CR>", opts)
vim.keymap.set("n", "<C-k>", ":lua require(\"harpoon.ui\").nav_file(3)<CR>", opts)
vim.keymap.set("n", "<C-l>", ":lua require(\"harpoon.ui\").nav_file(4)<CR>", opts)

-- show diffs in current branch
vim.keymap.set("n", "<leader>dg", ":DiffviewFileHistory <CR>", opts)

-- change colortheme
vim.keymap.set("n", "<leader><leader>l", ":colorscheme gruvbox | set background=light <CR>", opts)
vim.keymap.set("n", "<leader><leader>d", ":colorscheme onedark | set background=dark <CR>", opts)

-- open common files quickly
vim.keymap.set("n", "<leader><leader>e", ":cd ~/.config/nvim <CR>", opts)


vim.keymap.set("n", "gd", ":Glance definitions<CR>", opts)
vim.keymap.set("n", "gr", ":Glance references<CR>", opts)
vim.keymap.set("n", "gi", ":Glance implementations<CR>", opts)
