return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'mhinz/vim-startify'

	-- telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{ 'nvim-lua/plenary.nvim' }}
	}

	-- telescope extensions
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}
	use 'nvim-telescope/telescope-file-browser.nvim'

	-- LSP
	use {
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer',
	}

	-- TreeSitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
end)
