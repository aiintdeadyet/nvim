return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	-- or                              , branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		"debugloop/telescope-undo.nvim",
	},
	config = function ()
		require("telescope").setup{
			defaults = {
				mappings = {
					n = {  -- normal mode telescope key mappings
					}
				}
			},
			pickers = {
			},
			extensions = {
			},
		}
	end
}
