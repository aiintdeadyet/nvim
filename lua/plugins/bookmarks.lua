-- with lazy.nvim
return {
	"LintaoAmons/bookmarks.nvim",
	tag = "v0.5.3", -- optional, pin the plugin at specific version for stability
	dependencies = {
		{"nvim-telescope/telescope.nvim"},
		{"stevearc/dressing.nvim"} -- optional: to have the same UI shown in the GIF
	},
	config = function ()
		require("bookmarks").setup({
			-- json_db_path = vim.fs.normalize(vim.fn.stdpath("config") .. "/bookmarks.db.json"),
<<<<<<< HEAD
			-- json_db_path = "~/.cache/nvim/bookmarks.db.json"
			json_db_path = vim.fs.normalize(vim.fn.stdpath("cache") .. "/bookmarks.db.json"),
=======
				-- json_db_path = "~/.cache/nvim/bookmarks.db.json"
			json_db_path = vim.fs.normalize(vim.fn.stdpath("cache") .. "/bookmarks.db.json"), -- for some reason this line isn't working on my laptop
>>>>>>> 0e0622ff8071a4b11ce6a2fa54c49386febab5a5
			}
		)
	end
}
