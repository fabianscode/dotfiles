require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "glepnir/dashboard-nvim"
	use "andweeb/presence.nvim"

	use "ellisonleao/gruvbox.nvim"
	use "EdenEast/nightfox.nvim"
	use "folke/tokyonight.nvim"
	use "Mofiqul/dracula.nvim"

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use "nvim-telescope/telescope-file-browser.nvim"

	use "nvim-lualine/lualine.nvim"

	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	use "norcalli/nvim-colorizer.lua"
	use "junegunn/rainbow_parentheses.vim"

	use "chentoast/marks.nvim"

	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "neovim/nvim-lspconfig"
	use "L3MON4D3/LuaSnip"
	use "saadparwaiz1/cmp_luasnip"
	use "onsails/lspkind-nvim"
end)
