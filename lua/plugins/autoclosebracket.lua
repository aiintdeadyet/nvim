
return { -- auto close brackets
	"m4xshen/autoclose.nvim",
	config = function ()
		require("autoclose").setup({
			options = {
				disable_when_touch = true,
			},
			keys = {
				["'"] = {disabled_filetypes = {"text", "markdown"}}
			},
		})
	end
}
