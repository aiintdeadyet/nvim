-- leader key is set in ./init.lua

-- yank
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

-- past
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')

-- delete(cut)
vim.keymap.set("n", "<leader>d", '"+d')
vim.keymap.set("v", "<leader>d", '"+d')

-- change(replace)
vim.keymap.set("n", "<leader>c", '"+c')
vim.keymap.set("v", "<leader>c", '"+c')

-- file manager
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex, {}) -- opens nvims default file exporer (netRW)
-- vim.keymap.set("n", "<leader>fv", ":Neotree toggle<CR>", {}) -- toggle neotree file exporer
