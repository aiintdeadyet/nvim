-- leader key is set in ./init.lua

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

-- past to system clipboard
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')

-- delete(cut) to system clipboard
vim.keymap.set("n", "<leader>d", '"+d')
vim.keymap.set("v", "<leader>d", '"+d')

-- change(replace) to system clipboard
vim.keymap.set("n", "<leader>c", '"+c')
vim.keymap.set("v", "<leader>c", '"+c')

-- file manager
-- vim.keymap.set("n", "<leader>fv", vim.cmd.Ex, {}) -- opens nvims default file exporer (netRW)
vim.keymap.set("n", "<leader>fv", ":Neotree toggle<CR>", {}) -- toggle neotree file exporer

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fnd', "<cmd>Telescope undo<cr>") -- I think i will be finding a nother pluggin for this

-- dap
local dap = require("dap")
local ui  = require("dapui")
vim.keymap.set('n', "<F5>", function()
	-- save file
	if dap.session() == nil then -- if we aren't currently debugging 
		vim.cmd.write()
		-- vim.cmd(':silent exec "!make debug"') -- silently run make
		-- now trying to figure out a way to do this through json or dap configs
	end
	-- open debuger if not already open
	ui.open()
	-- call nvim.dap continue()
	dap.continue()
	-- ui.close()
end)
vim.keymap.set('n', "<F10>", dap.step_over, {})
vim.keymap.set('n', "<F11>", dap.step_into, {}) -- this one has problems (<F11> will full screen the window instead of stepping into)
vim.keymap.set('n', "<F12>", dap.step_out, {})
vim.keymap.set('n', '<leader>bp', dap.toggle_breakpoint, {})
-- vim.keymap.set('n', '<leader>B', dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')))
-- vim.keymap.set('n', '<leader>lp', dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))) 
vim.keymap.set('n', '<leader>Bp', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>") -- i don't like the way these lines are written
vim.keymap.set('n', '<leader>lp', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>") -- this line needs changed to
vim.keymap.set('n', "<leader>dr", dap.repl.toggle, {})
vim.keymap.set('n', '<leader>gl', ":lua vim.diagnostic.open_float()<CR>")
vim.keymap.set('n', '<leader>db', ui.toggle)
