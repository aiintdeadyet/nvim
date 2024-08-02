# nvim

My custom neovim configuration writen in lua.

## Installation

Simply clone this repo to ```~/.config/```.
```
cd ~/.config/
git clone git@github.com:aiintdeadyet/nvim.git
```
Then run `neovim`.

## Included plugins
```
github.com/nvim-telescope/telescope-dap.nvim
github.com/mfussenegger/nvim-dap-python
github.com/nvim-telescope/telescope.nvim
github.com/jiangmiao/auto-pairs
github.com/abecodes/tabout.nvim
github.com/rcarriga/nvim-dap-ui
github.com/nvim-neo-tree/neo-tree.nvim
github.com/VonHeikemen/lsp-zero.nvim
github.com/nvim-treesitter/nvim-treesitter
github.com/projekt0n/github-nvim-theme
github.com/mfussenegger/nvim-dap
github.com/jay-babu/mason-nvim-dap.nvim
github.com/iamcco/markdown-preview.nvim
github.com/williamboman/mason.nvim
github.com/theHamsta/nvim-dap-virtual-text
github.com/mg979/vim-visual-multi
```
## Dependencies and their instalation 
xsel ```sudo apt install xsel```

ripgrep ```brew install ripgrep```

libstdc++ ```apt search libstdc```, ```sudo apt install libstdc++-12-dev``` at time of writing

## Adding new plugins

Under ``~/.config/nvim/lua/plugins/`` add a new lua file for the plugin you wish to install. Inside the lua file return a table for your plugin.

**Example**

```
return {
	'projekt0n/github-nvim-theme',
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require('github-theme').setup({
			-- ...
		})

		vim.cmd('colorscheme github_dark_tritanopia')
	end,
}

```

## Comon Problems

<!-- ### nvim can't find standard library headers. -->
<!--  -->
<!-- https://stackoverflow.com/questions/74785927/clangd-doesnt-recognize-standard-headers -->
<!-- You can read more about it in the link above but to be brief it is a problem with clangd looking for the latest libstdc++ and not being able to find it. To fix this type ``apt search libstdc`` to find the latest version then install it through apt. At the current time this would look something like ``sudo apt install libstdc++-12-dev``. -->

### Some things may not install by default. 

add note about needing luarocks and luafilesystem

add note about needing local-lua-debuger-vscode (maybe)

Currently have problems with mason not installing everything it should be by default. This can be solved by opening neovim, typing the ``:Mason``comand and searching for the packages you need then installing them with ``:MasonInstall. ``
