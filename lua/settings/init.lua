require("settings.txt")
require("settings.settings")
require("settings.remaps")

-- local lfs = require "lfs"
-- 
-- -- Function to get the directory of the current script
-- local function get_script_directory()
--     local script_path = debug.getinfo(1, "S").source:sub(2)
--     return script_path:match("(.*/)")
-- end
-- 
-- -- Function to list files in a specified directory
-- local function list_files_in_directory(directory)
--     for file in lfs.dir(directory) do
--         if file ~= "." and file ~= ".." then
--             print(file)
--         end
--     end
-- end
-- 
-- -- Get the directory of the current script
-- local script_directory = get_script_directory()
-- 
-- -- Call the function with the script's directory
-- local files = list_files_in_directory(script_directory)
-- 
-- for _, file in ipairs(files) do
--     -- Remove the .lua extension to get the module name
--     local module_name = file:sub(1, -5)
--     local ok, err = pcall(require, module_name)
--     if not ok then
--         print("Error requiring " .. module_name .. ": " .. err)
--     else
--         print("Successfully required " .. module_name)
--     end
-- end

