
return {
	'jbyuki/one-small-step-for-vimkind',
	config = function ()
		local dap = require"dap"
		dap.configurations.lua = {
			{
				type = 'nlua',
				request = 'attach',
				name = "Attach to running Neovim instance",
			}
		}

		dap.adapters.nlua = function(callback, config)
			callback({ type = 'server', host = config.host or "127.0.0.1", port = config.port or 8086 })
		end
	end,
}

-- local dap = require("dap")
-- dap.adapters["local-lua"] = {
-- 	type = "executable",
-- 	command = "node",
-- 	args = {
-- 		"/absolute/path/to/local-lua-debugger-vscode/extension/debugAdapter.js"
-- 	},
-- 	enrich_config = function(config, on_config)
-- 		if not config["extensionPath"] then
-- 			local c = vim.deepcopy(config)
-- 			-- 💀 If this is missing or wrong you'll see 
-- 			-- "module 'lldebugger' not found" errors in the dap-repl when trying to launch a debug session
-- 			-- c.extensionPath = "/absolute/path/to/local-lua-debugger-vscode/"
-- 			c.extensionPath = "/usr/lib/node_modules/local-lua-debugger-vscode/"
-- 			on_config(c)
-- 		else
-- 			on_config(config)
-- 		end
-- 	end,
-- }


--
-- return {
-- 	"mfussenegger/nvim-lua-debugger",
-- 	ft = "lua",
-- 29k	dependencies = {
-- 		'mfussenegger/nvim-dap',
-- 	},
-- 	config = function() -- I am almost certain that this won't work properly
-- 		local dap = require('dap')
-- 		dap.adapters["local-lua"] = {
-- 			type = 'executable',
-- 			command = 'local-lua-dbg',
-- 			enrich_config = function(config, on_config)
-- 				if not config["extensionPath"] then
-- 					local c = vim.deepcopy(config)
-- 					---@diagnostic disable-next-line: inject-field
-- 					c.extensionPath = "/usr/lib/node_modules/local-lua-debugger-vscode/"
-- 					on_config(c)
-- 				else
-- 					on_config(config)
-- 				end
-- 			end
-- 		}
-- 	end,
-- }
