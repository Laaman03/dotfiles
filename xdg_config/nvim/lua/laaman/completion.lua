local snip = require'luasnip'
local cmp = require'cmp'

cmp.setup {
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = {
		['<c-p>'] = cmp.mapping.select_prev_item(),
		['<c-n>'] = cmp.mapping.select_next_item(),
		['<c-d>'] = cmp.mapping.scroll_docs(-4),
		['<c-f>'] = cmp.mapping.scroll_docs(4),
		['<c-space>'] = cmp.mapping.complete(),
		['<c-e>'] = cmp.mapping.complete(),
		['<cr>'] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Replace,
			select = true
		},
		['<tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif snip.expand_or_jumpable() then
				snip.expand_or_jump()
			else
				fallback()
			end
		end
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }
	}
}
