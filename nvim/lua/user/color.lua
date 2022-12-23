-- require 'colorizer'.setup(
-- 	{ '*'; },
-- 	{
-- 		RGB      = true;
-- 		RRGGBB   = true;
-- 		names    = true;
-- 		RRGGBBAA = true;
-- 		rgb_fn   = true;
-- 		hsl_fn   = true;
-- 		css      = true;
-- 		css_fn   = true;
-- 	})

vim.cmd[[
	set termguicolors
	set t_Co=256
]]

require("nvim-highlight-colors").setup {
	render = "first_column", -- or 'foreground' or 'first_column'
	enable_named_colors = true,
	enable_tailwind = false
}
