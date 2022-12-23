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
