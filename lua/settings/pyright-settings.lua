
require('lspconfig').pyright.setup {
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

