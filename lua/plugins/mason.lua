-- handles mason installs 
return {
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			"clangd",
			"clang-format",
			"codelldb",
			"pyright",
			"rust-analyzer",
			"eslint-lsp",
			"js-debug-adapter",
			"prettier",
			"typescript-language-server"
		},
	},
}
