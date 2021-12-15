return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'mhinz/vim-startify'

	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{ 'nvim-lua/plenary.nvim' }}
	}

	-- telescope fzf extension
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}

	-- LSP and completion
	use {
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer',
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-nvim-lsp',
		'saadparwaiz1/cmp_luasnip',
		'L3MON4D3/LuaSnip'
	}
end)
