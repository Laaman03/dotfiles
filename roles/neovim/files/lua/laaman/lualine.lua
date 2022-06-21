local M = {}

require'lualine'.setup {
	options = { icons_enabled = false, theme = 'nightfly' }
}

local lualine = require 'lualine'

M.init = function()
	lualine.setup { 
		options = { icons_enabled = false, theme = 'nightfly' }
	}
end

return M
