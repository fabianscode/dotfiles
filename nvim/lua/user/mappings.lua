vim.keymap.set("n", "<Space>", "", {})
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("n", "L", "o<ESC>")

vim.keymap.set("n", "J", "}")
vim.keymap.set("n", "K", "{")
vim.keymap.set("v", "J", "}")
vim.keymap.set("v", "K", "{")

local function insert_curl_par()
	local pos = vim.api.nvim_win_get_cursor(0)
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, pos[2]) .. " {" .. line:sub(pos[2])
	vim.api.nvim_set_current_line(nline)
	vim.api.nvim_win_set_cursor(0, { pos[1], pos[2] + 2 })
	vim.cmd("normal o")

	pos = vim.api.nvim_win_get_cursor(0)
	line = vim.api.nvim_get_current_line()
	nline = line:sub(0, pos[2]) .. "}" .. line:sub(pos[2])
	vim.api.nvim_set_current_line(nline)
	vim.api.nvim_win_set_cursor(0, { pos[1], pos[2] + 2 })
	vim.cmd("normal O")

	pos = vim.api.nvim_win_get_cursor(0)
	line = vim.api.nvim_get_current_line()
	nline = line:sub(0, pos[2]) .. "\t" .. line:sub(pos[2])
	vim.api.nvim_set_current_line(nline)
	vim.api.nvim_win_set_cursor(0, { pos[1], pos[2] + 2 })
end

vim.keymap.set("i", "<C-e>", insert_curl_par)

--dap
vim.keymap.set("n", "<C-b>", ":PBToggleBreakpoint<CR>", opts)
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
