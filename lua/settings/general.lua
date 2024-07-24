-- general
vim.cmd.set("number relativenumber") -- line numbering
vim.cmd.set("cursorline") -- highlite the current line the cursor is on
-- vim.cmd.set("nowrap") -- set lines not to wrap
vim.cmd.set("nobackup") -- don't save backup files 
vim.cmd.set("clipboard+=unnamedplus")
vim.cmd.set("scrolloff=12")
vim.cmd("filetype on")

-- makeing it so that I can use lua libraries 
local lua_version = _VERSION:match("%d+%.%d+")
package.path = package.path .. './?.lua;/usr/local/share/lua/' .. lua_version .. '/?.lua;/usr/local/share/lua/' .. lua_version .. '/?/init.lua;/usr/local/lib/lua/' .. lua_version .. '/?.lua;/usr/local/lib/lua/' .. lua_version .. '/?/init.lua;/usr/share/lua/' .. lua_version .. '/?.lua;/usr/share/lua/' .. lua_version .. '/?/init.lua;/home/james/.luarocks/share/lua/' .. lua_version .. '/?.lua;/home/james/.luarocks/share/lua/' .. lua_version .. '/?/init.lua'
package.cpath = package.cpath .. './?.so;/usr/local/lib/lua/' .. lua_version .. '/?.so;/usr/lib/x86_64-linux-gnu/lua/' .. lua_version .. '/?.so;/usr/lib/lua/' .. lua_version .. '/?.so;/usr/local/lib/lua/' .. lua_version .. '/loadall.so;/home/james/.luarocks/lib/lua/' .. lua_version .. '/?.so'
-- vim.cmd.let("g:neomake")

-- indentation
vim.cmd.set("tabstop=4") -- set number of spaces after tab to 4
vim.cmd.set("autoindent shiftwidth=4") -- hitting tab will put down 2 spaces 
vim.cmd.set("smarttab") -- I don't know

-- show at bottom
vim.cmd.set("showmode") -- show what mode you are in
vim.cmd.set("showmatch") -- show matching words during a search
vim.cmd.set("hlsearch") -- use highlighting when during a search

