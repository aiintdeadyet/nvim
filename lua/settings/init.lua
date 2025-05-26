local lfs = require "lfs"

FILES = {}

-- Function to get the directory of the current script
local function get_script_directory()
    local script_path = debug.getinfo(1, "S").source:sub(2)
    return script_path:match("(.*/)")
end

-- Function to list FILES in a specified directory
local function list_FILES_in_directory(directory)
    for file in lfs.dir(directory) do
        if file ~= "." and file ~= ".." and file ~= "init.lua" then
            FILES[#FILES+1] = file
        end
    end
end

-- Get the directory of the current script
local script_directory = get_script_directory()

-- Call the function with the script's directory
list_FILES_in_directory(script_directory)

for _, file in ipairs(FILES) do
    -- Remove the .lua extension to get the module name
    local module_name = "settings." .. file:sub(1, -5)
	require(module_name)
end
