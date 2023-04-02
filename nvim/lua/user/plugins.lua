require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "lewis6991/impatient.nvim"

	--use "navarasu/onedark.nvim"
	use "dylanaraps/wal.vim"

	use "nvim-lua/plenary.nvim"
	use "lukas-reineke/indent-blankline.nvim"

	use "junegunn/fzf.vim"
	use "pbogut/fzf-mru.vim"
	use "ctrlpvim/ctrlp.vim"
	use "mileszs/ack.vim"
	use "ThePrimeagen/harpoon"

	use "nvim-treesitter/nvim-treesitter"
	use "nvim-treesitter/nvim-treesitter-context"

	use "hrsh7th/nvim-cmp"
	use "neovim/nvim-lspconfig"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-nvim-lua"
	use "RishabhRD/nvim-lsputils"


	use "L3MON4D3/LuaSnip"
	use "saadparwaiz1/cmp_luasnip"
	use "onsails/lspkind-nvim"
end)
