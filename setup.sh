#!/bin/bash

# install dependencies 

general-dependencies() {
	# xsel
	sudo apt install xsel
	# ripgrep
	brew install ripgrep
}


lua-packages() {
	# luarocks
	sudo apt install luarocks
	# luafilesystem
	sudo luarocks install luafilesystem
}


lua-debug() {
	# local-lua-debuger-vscode
	sudo apt install npm
	cd /usr/lib/node_modules/
	git clone https://github.com/tomblind/local-lua-debugger-vscode
	cd local-lua-debugger-vscode
	npm install
	npm run build
}


# install Mason packages



main() {
	lua-debug
}


main "$@"
