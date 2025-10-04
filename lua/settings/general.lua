-- general
vim.cmd.set("number relativenumber") -- line numbering
vim.cmd.set("cursorline") -- highlite the current line the cursor is on
vim.cmd.set("nowrap") -- set lines not to wrap (need to figureout how to not do this on text files)
vim.cmd.set("nobackup") -- don't save backup files 
-- vim.cmd.set("clipboard+=unnamedplus") -- got rid of this to use "+p
vim.cmd.set("scrolloff=10") -- used to set how close the cursor can get to the end of the screen
-- vim.cmd("filetype on")
-- vim.cmd.set("spell spelllang=en_us")


-- indentation
vim.cmd.set("tabstop=4") -- set number of spaces after tab to 4
vim.cmd.set("autoindent shiftwidth=4") -- hitting tab will put down 2 spaces 
vim.cmd.set("smarttab") -- I don't know

-- show at bottom
vim.cmd.set("showmode") -- show what mode you are in
vim.cmd.set("showmatch") -- show matching words during a search
vim.cmd.set("hlsearch") -- use highlighting when during a search
