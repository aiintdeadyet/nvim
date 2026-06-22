
vim.api.nvim_create_autocmd("FileType", {
	pattern = "text",
	callback = function()
		vim.cmd.set("wrap")
		vim.cmd.set("linebreak")
	end
})
