
vim.api.nvim_create_autocmd("FileType", {
	pattern = "text",
	callback = function()
		vim.cmd.set("wrap")
		vim.cmd.set("linebreak")
		vim.opt.spelllang = "en_us"
		vim.opt.spell = true
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.cmd.set("wrap")
		vim.cmd.set("linebreak")
		vim.opt.spelllang = "en_us"
		vim.opt.spell = true
	end,
})
