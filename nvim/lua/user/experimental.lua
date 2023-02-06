local rt = require("rust-tools")

rt.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover actions
			vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<C-q>", rt.code_action_group.code_action_group, { buffer = bufnr })

			--vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { buffer = bufnr })
			--vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { buffer = bufnr })
			--vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { buffer = bufnr })
			--vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { buffer = bufnr })
			--vim.keymap.set('n', '<F6>', '<cmd>lua vim.lsp.buf.rename()<CR>', { buffer = bufnr })
			vim.keymap.set('n', '<F3>', "<cmd>%! rustfmt<CR>", { buffer = bufnr })

		end,
	},
})

-- set vertical split color
-- vim.cmd[[
-- 	hi LineNr guibg=bg
-- 	set foldcolumn=2
-- 	hi foldcolumn guibg=bg
-- 	hi VertSplit guibg=bg guifg=#61AFEF
-- ]]

local glance = require('glance')
local actions = glance.actions

glance.setup({
	height = 18, -- Height of the window
	zindex = 45,
	preview_win_opts = { -- Configure preview window options
		cursorline = true,
		number = true,
		wrap = true,
	},
	border = {
		enable = false, -- Show window borders. Only horizontal borders allowed
		top_char = '―',
		bottom_char = '―',
	},
	list = {
		position = 'right', -- Position of the list window 'left'|'right'
		width = 0.33, -- 33% width relative to the active window, min 0.1, max 0.5
	},
	theme = { -- This feature might not work properly in nvim-0.7.2
		enable = true, -- Will generate colors for the plugin based on your current colorscheme
		mode = 'auto', -- 'brighten'|'darken'|'auto', 'auto' will set mode based on the brightness of your colorscheme
	},
	mappings = {
		list = {
			['j'] = actions.next, -- Bring the cursor to the next item in the list
			['k'] = actions.previous, -- Bring the cursor to the previous item in the list
			['<C-u>'] = actions.preview_scroll_win(5),
			['<C-d>'] = actions.preview_scroll_win(-5),
			['v'] = actions.jump_vsplit,
			['s'] = actions.jump_split,
			['<CR>'] = actions.jump,
			['q'] = actions.close,
			['<Esc>'] = actions.close,
		},
	},
	hooks = {},
	indent_lines = {
		enable = true,
		icon = '│',
	},
	winbar = {
		enable = true, -- Available strating from nvim-0.8+
	},
})
