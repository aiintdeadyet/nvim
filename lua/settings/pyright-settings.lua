
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

-- lspconfig.pylsp.plugins.rope_autoimport.completions.enabled = false	
-- lspconfig.pylsp.setup{
-- 	settings = {
-- 		pylsp = {
-- 			plugins = {
-- 				rope_autoimport = true
-- 			}
-- 		}
-- 	}
-- }	

