require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "lewis6991/impatient.nvim"
	use "andweeb/presence.nvim"


	use "ellisonleao/gruvbox.nvim"
	use "EdenEast/nightfox.nvim"
	use "folke/tokyonight.nvim"
	use "Mofiqul/dracula.nvim"
	use "navarasu/onedark.nvim"


	use "nvim-lua/plenary.nvim"
	use "akinsho/toggleterm.nvim"

	use "nvim-telescope/telescope.nvim"
	use "nvim-telescope/telescope-file-browser.nvim"
	use "ThePrimeagen/harpoon"


	use "sindrets/diffview.nvim"
	use "kylechui/nvim-surround"

	use "nvim-treesitter/nvim-treesitter"
	use "nvim-treesitter/nvim-treesitter-context"


	use "brenoprata10/nvim-highlight-colors"
	use "junegunn/rainbow_parentheses.vim"
	use "nvim-lualine/lualine.nvim"


	use "chentoast/marks.nvim"
	use "junegunn/goyo.vim"
	use "lukas-reineke/indent-blankline.nvim"
	use "RishabhRD/popfix"


	use "antoinemadec/FixCursorHold.nvim"
	use "nvim-neotest/neotest"


	use "hrsh7th/nvim-cmp"
	use "neovim/nvim-lspconfig"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-nvim-lua"
	use "RishabhRD/nvim-lsputils"
	use "simrat39/rust-tools.nvim"
	use "williamboman/nvim-lsp-installer"
	--use { "mfussenegger/nvim-jdtls", ft = { "java" } }


	use "mfussenegger/nvim-dap"
	use "rcarriga/nvim-dap-ui"
	use "theHamsta/nvim-dap-virtual-text"
	use "Weissle/persistent-breakpoints.nvim"


	use "L3MON4D3/LuaSnip"
	use "saadparwaiz1/cmp_luasnip"
	use "onsails/lspkind-nvim"
end)
