local M = {}
local tree_sitter_setup = require 'nvim-treesitter.configs'.setup

M.init = function()
	tree_sitter_setup {
		highlight = {
			enable = true
		}
	}
end

return M
