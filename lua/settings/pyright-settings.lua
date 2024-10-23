
local lspconfig = require('lspconfig')

lspconfig.pyright.setup {
	settings = {
		python = {
			analysis = {
				autoImportCompletions = false,
				autoSearchPaths = true,
				diagnosticMode = "workspace", -- openFilesOnly, workspace
				typeCheckingMode = "basic", -- off, basic, strict
				useLibraryCodeForTypes = true,
				
			}
		}
	}
}

-- lspconfig.pylsp.plugins.rope_autoimport.completions.enabled = false	
lspconfig.pylsp.setup{
	settings = {
		pylsp = {
			plugins = {
				rope_autoimport = false
			}
		}
	}
}	

