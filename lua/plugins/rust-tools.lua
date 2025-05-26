return {
	'simrat39/rust-tools.nvim',
	dependencies = {
		"neovim/nvim-lspconfig",
		"nvim-lua/plenary.nvim",
	},
	-- I may need to add a config funciton if I don't like the default or to run setup funciton
	-- config = function ()
	-- 	local on_attach = require("plugins.configs.lsp").on_attach
	-- 	local capabilities = require("plugins.configs.lspconfig").capabilities
	--
	-- 	local options = {
	-- 		server = {
	-- 			on_attach = on_attach,
	-- 			capabilities = capabilities,
	-- 		}
	-- 	}
	--
	-- 	require("rust-tools").setup(options)
	-- end

	-- config = function ()
	-- 	local rt = require("rust-tools")
	-- 	local mason_registry = require("mason-registry")
	--
	-- 	local codelldb = mason_registry.get_package("codelldb")
	-- 	local extension_path = codelldb:get_install_path() .. "/extension/"
	-- 	local codelldb_path = extension_path .. "adapter/codelldb"
	-- 	local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
	--
	-- 	rt.setup({
	-- 		dap = {
	-- 			adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
	-- 		},
	-- 		server = {
	-- 			capabilities = require("cmp_nvim_lsp").default_capabilities(),
	-- 			on_attach = function (_, bufnr)
	-- 				vim.keymap.set("n", "<leader>k", rt.hover_actions.hover_actions, {buffer = bufnr})
	-- 				vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, {buffer = bufnr})
	-- 			end,
	-- 		},
	-- 		tools = {
	-- 			hover_actions = {
	-- 				auto_focus = true,
	-- 			},
	-- 		},
	-- 	})
	-- end,
}
