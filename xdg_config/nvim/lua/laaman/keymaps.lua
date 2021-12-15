local function kmap(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
	kmap('n', shortcut, command)
end

local function imap(shortcut, command)
	kmap('i', shortcut, command)
end

-- Normal mode remaps
nmap("<leader>h", ":set number<cr>")
nmap("<leader>sv", ":source $MYVIMRC<cr>")
nmap("<leader>ev", ":e $MYVIMRC<cr>")
nmap("<leader>ch", ":noh<cr>")
nmap("<leader>ff", ":Telescope find_files<cr>")

-- Insert remaps
imap("jk", "<esc>")
