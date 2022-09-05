require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "lewis6991/impatient.nvim"

	use "glepnir/dashboard-nvim"
	use "andweeb/presence.nvim"

	use "ellisonleao/gruvbox.nvim"
	use "EdenEast/nightfox.nvim"
	use "folke/tokyonight.nvim"
	use "Mofiqul/dracula.nvim"
	use "navarasu/onedark.nvim"

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.0",
		requires = { {"nvim-lua/plenary.nvim"} }
	}
	use "nvim-telescope/telescope-file-browser.nvim"

	use "nvim-lualine/lualine.nvim"

	use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

	use "norcalli/nvim-colorizer.lua"
	use "junegunn/rainbow_parentheses.vim"

	use "chentoast/marks.nvim"
	use "junegunn/goyo.vim"

	use "lukas-reineke/indent-blankline.nvim"

	use "mfussenegger/nvim-dap"

	use({
		'ray-x/navigator.lua',
		requires = {
			{ 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
			{ 'neovim/nvim-lspconfig' },
		},
	})

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
	end}

	-- nvim-cmp
	use "hrsh7th/nvim-cmp"

	use "neovim/nvim-lspconfig"

	use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-nvim-lua"

	use "L3MON4D3/LuaSnip"
	use "saadparwaiz1/cmp_luasnip"
	use "onsails/lspkind-nvim"
end)
