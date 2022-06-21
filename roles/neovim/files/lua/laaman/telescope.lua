local M = {}

local load_extension = require 'telescope'.load_extension
M.init = function()
	load_extension('fzf')
	load_extension('file_browser')
end

return M
