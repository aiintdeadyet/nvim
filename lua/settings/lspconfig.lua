
local lspconfig = require('lspconfig')
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- python------------------------------------------------------------------------------------------

vim.lsp.config("pyright", {
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        autoImportCompletions = false,
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        typeCheckingMode = "basic",
        useLibraryCodeForTypes = true,
      },
    },
  },
})

vim.lsp.enable("pyright")

-- lspconfig.pyright.setup {
-- 	settings = {
-- 		python = {
-- 			analysis = {
-- 				autoImportCompletions = false,
-- 				autoSearchPaths = true,
-- 				diagnosticMode = "workspace", -- openFilesOnly, workspace
-- 				typeCheckingMode = "basic", -- off, basic, strict
-- 				useLibraryCodeForTypes = true,
-- 			}
-- 		}
-- 	}
-- }

vim.lsp.config("pylsp", {
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = true,
          ignore = { "E261" },
        },
      },
    },
  },
})

vim.lsp.enable("pylsp")

-- lspconfig.pylsp.setup {
-- 	settings = {
-- 		pylsp = {
-- 			plugins = {
-- 				pycodestyle = {
-- 					enabled = true,
-- 					ignore = {"E261"},
-- 				},
-- 			}
-- 		}
-- 	}
-- }

-- C/C++-------------------------------------------------------------------------------------------

vim.lsp.config("clangd", {
  capabilities = capabilities,
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
  },
})

vim.lsp.enable("clangd")

-- lspconfig.clangd.setup {
-- 	capabilities = cmp,
--        cmd = {
--            "clangd",
--            "--background-index",
--            "-j=12",
--            "--query-driver=/usr/bin/**/clang-*,/bin/clang,/bin/clang++,/usr/bin/gcc,/usr/bin/g++",
--            "--clang-tidy",
--            "--clang-tidy-checks=*",
--            "--all-scopes-completion",
--            "--cross-file-rename",
--            "--completion-style=detailed",
--            "--header-insertion-decorators",
--            "--header-insertion=never",
--            "--pch-storage=memory",
--        }
-- }
--

