
local lspconfig = require('lspconfig')

-- python------------------------------------------------------------------------------------------

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

lspconfig.pylsp.setup {
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					enabled = true,
					ignore = {"E261"},
				},
			}
		}
	}
}

-- C/C++-------------------------------------------------------------------------------------------

lspconfig.clangd.setup {
	capabilities = cmp,
       cmd = {
           "clangd",
           "--background-index",
           "-j=12",
           "--query-driver=/usr/bin/**/clang-*,/bin/clang,/bin/clang++,/usr/bin/gcc,/usr/bin/g++",
           "--clang-tidy",
           "--clang-tidy-checks=*",
           "--all-scopes-completion",
           "--cross-file-rename",
           "--completion-style=detailed",
           "--header-insertion-decorators",
           "--header-insertion=never",
           "--pch-storage=memory",
       }
}
