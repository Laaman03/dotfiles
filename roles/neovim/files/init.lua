-- packer.nvim https://github.com/wbthomason/packer.nvim
require "laaman.plugins".init()

-- Global settings and options
require "laaman.global".init()

-- Key remaps
require "laaman.keymaps".init()

-- load lualine options
require "laaman.lualine".init()

-- load telescope fzf extension
require "laaman.telescope".init()

-- lsp setup
require "laaman.lsp".init()

-- treesitter
require "laaman.treesitter".init()

-- neogit
require "laaman.neogit".init()
