local nvim_lsp = require'nvim-lsp-installer'

local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true }
	local bmap = function(shortcut, command)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', shortcut, command, opts)
	end

	-- Set keymaps here and they will be bound in the for loop below
	local keymaps = {
		{ 'gD', ':lua vim.lsp.buf.declaration()<cr>' },
		{ 'gd', ':lua vim.lsp.buf.definition()<cr>' },
		{ 'K', ':lua vim.lsp.buf.hover()<cr>' },
		{ '<space>rn', ':lua vim.lsp.buf.rename()<cr>' },
		{ '[d', ':lua vim.diagnostic.goto_prev()<cr>' },
		{ ']d', ':lua vim.diagnostic.goto_next()<cr>' },
	}

	for _, v in ipairs(keymaps) do
		bmap(v[1], v[2])
	end

end

nvim_lsp.on_server_ready(function(server)
	server:setup({ on_attach = on_attach, capabilities = capabilities })
end)

vim.o.completeopt = 'menuone,noselect'

