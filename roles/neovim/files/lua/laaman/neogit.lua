local M = {}

local neogit = require 'neogit'

M.init = function()
	neogit.setup{}
end

return M
