
return { -- python dap addapter 
	'mfussenegger/nvim-dap-python',
	ft = "python", -- File Type 
	dependencies = {
		'mfussenegger/nvim-dap',
	},
	config = function(_, opts)
		-- local path = "~/.config/nvim/.virtualenvs/debugpy/bin/python3" -- if you want to setup a python compiler as part of the nvim config
		require("dap-python").setup("python3")
		-- example custom config
		-- table.insert(require('dap').configurations.python, {
		-- 	name = 'My custom launch configuration',
		-- 	type = 'debugpy',
		-- 	request = 'launch',
		-- 	program = '${file}',
		-- 	console = 'integratedTerminal', -- this line might cause problems
		-- 	-- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
		-- })
	end,
}
