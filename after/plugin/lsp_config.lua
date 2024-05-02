require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "pylsp", "clangd", "cmake", "arduino_language_server" }
})

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.buildin').lsp_references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').clangd.setup ({
	on_attach = on_attach,
	capabilities = capabilities, 
})

require('lspconfig').jdtls.setup ({
	on_attach = on_attach,
	capabilities = capabilities, 
})

require('lspconfig').pylsp.setup ({
	on_attach = on_attach,
	capabilities = capabilities,
})

require('lspconfig').cmake.setup ({
	on_attach = on_attach,
	capabilities = capabilities,
})

require('lspconfig').arduino_language_server.setup ({
	on_attach = on_attach,
	capabilities = capabilities,
})
