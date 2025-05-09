
-- general
-- map leader is set in init.lua to prevent an error
vim.keymap.set("n", "<leader>y", '"+y') -- remap yank to system clipboard
vim.keymap.set("n", "<leader>p", '"+p') -- past from system clipboard
vim.keymap.set("n", "<leader>d", '"+d') -- remap cut to system clipboard
vim.keymap.set("v", "<leader>y", '"+y') -- remap yank to system clipboard
vim.keymap.set("v", "<leader>p", '"+p') -- past from system clipboard
vim.keymap.set("v", "<leader>d", '"+d') -- remap cut to system clipboard

-- file management
-- vim.keymap.set("n", "<leader>fv", vim.cmd.Ex, {}) -- opens nvims default file exporer (netRW)
vim.keymap.set("n", "<leader>fv", ":Neotree toggle<CR>", {}) -- toggle neotree file exporer

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fnd', "<cmd>Telescope undo<cr>") -- I think i will be finding a nother pluggin for this

-- dap (I am smart enough to know there is a better way to call these functions but not smart enough to us it)
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
	ui.close()
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
-- dap ui
vim.keymap.set('n', '<leader>db', ui.toggle)
-- vim.keymap.set('n', '<leader>db', ":lua require('dapui').toggle()<CR>")

-- comment.nvim 
-- this stuff is in the autocomment.lua file

-- toggleterm, remapings have changed to ctrl-t for both and moved to the togglerterm pluggin file


-- book marks
vim.keymap.set({ "n", "v" }, "<leader>mm", "<cmd>BookmarksMark<cr>", { desc = "Mark current line into active BookmarkList." }) -- I want to make it so that this doesn't ask me to name my bookmark'
vim.keymap.set({ "n", "v" }, "<leader>mgt", "<cmd>BookmarksGoto<cr>", { desc = "Go to bookmark at current active BookmarkList" })
vim.keymap.set({ "n", "v" }, "<leader>m?", "<cmd>BookmarksCommands<cr>", { desc = "Find and trigger a bookmark command." })
vim.keymap.set({ "n", "v" }, "<leader>ml", "<cmd>BookmarksGotoRecent<cr>", { desc = "Go to latest visited/created Bookmark" })


