
return {
	"mfussenegger/nvim-lua-debugger",
	ft = "lua",
	dependencies = {
		'mfussenegger/nvim-dap',
	},
	config = function()
		local dap = require('dap')
		dap.adapters.neovim = function(callback)
			local server = require('lua_debugger').launch()
			callback({ type = 'server'; host = server.host; port = server.port; })
		end
		dap.configurations.lua = {
			{
				type = 'neovim';
				request = 'attach';
				name = "Attach to running neovim instance";
			},
		}
	end
}
