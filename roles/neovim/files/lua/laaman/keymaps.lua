local M = {}

local function kmap(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
	kmap('n', shortcut, command)
end

local function imap(shortcut, command)
	kmap('i', shortcut, command)
end

M.init = function()
	-- Normal mode remaps
	nmap('<leader>sv', ':source $MYVIMRC<cr>')
	nmap('<leader>ev', ':e $MYVIMRC<cr>')
	nmap('<leader>ch', ':noh<cr>')
	nmap('<leader>ff', ':Telescope find_files<cr>')
	nmap('<leader>fh', ':Telescope find_files hidden=true<cr>')
	nmap('<leader>fb', ':Telescope file_browser<cr>')
	nmap('<leader>fg', ':Telescope grep_string<cr>')
	nmap('<leader>ft', ':Telescope treesitter<cr>')
	nmap('<leader><Left>', '<C-^>')
	nmap('<leader>l', ':Ex<cr>')

	-- Insert remaps
	imap('jk', '<esc>')
end

return M
