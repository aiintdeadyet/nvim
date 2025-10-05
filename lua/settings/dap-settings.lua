local dap = require("dap") -- making global dap variable


-- lua-----------------------------------------------------------------------------------------------------
dap.adapters["local-lua"] = {
	type = "executable",
	command = "node",
	args = {
		"/usr/lib/node_modules/local-lua-debugger-vscode/extension/debugAdapter.js"
	},
	enrich_config = function(config, on_config)
		if not config["extensionPath"] then
			local c = vim.deepcopy(config)
			-- 💀 If this is missing or wrong you'll see 
			-- "module 'lldebugger' not found" errors in the dap-repl when trying to launch a debug session
			c.extensionPath = "/usr/lib/node_modules/local-lua-debugger-vscode/"
			on_config(c)
		else
			on_config(config)
		end
	end,
}

dap.configurations.lua = {
	{
		name = 'Current file (local-lua-dbg, lua)',
		type = 'local-lua',
		request = 'launch',
		cwd = '${workspaceFolder}',
		program = {
			lua = 'lua5.1',
			file = '${file}',
		},
		args = {},
	},
}

-- c/c++/rust------------------------------------------------------------------------------------------------------------

dap.adapters.codelldb = {
	type = "server",
	prot = "${port}",
	executable = {
		command = "/usr/bin/codelldb",
		args = {"--port", "${port}"},
	}
}

dap.configurations.rust = {
	{
		name = "Custom",
		type = "codelldb",
		request = "launch",
		program = function()
			vim.fn.jobstart('cargo build')
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
			-- I might be able to find a way to just have the file run without needing to pass in the path
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		arg = {},
		runInTerminal = false,
		showDisassembly = "never",
	},
}

dap.configurations.cpp = {
	{
		name = "Custom",
		type = "codelldb",
		request = "launch",
		program = function ()
			vim.cmd(':silent exec "!make debug"') -- silently run make
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
		runInTerminal = true,
	}
}

dap.configurations.c = {
	{
		name = "Custom",
		type = "codelldb",
		request = "launch",
		program = function ()
			vim.cmd(':silent exec "!make debug"') -- silently run make
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
		runInTerminal = true,
	}
}


-- js ------------------------------------------------------------------------------------------------------------
for _, language in ipairs({ "typescript", "javascript" }) do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = vim.fn.getcwd(),
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach to process",
      processId = require("dap.utils").pick_process,
      cwd = vim.fn.getcwd(),
    },
  }
end
