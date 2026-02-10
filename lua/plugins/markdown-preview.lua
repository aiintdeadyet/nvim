
-- return {
--     "toppair/peek.nvim",
--     event = { "VeryLazy" },
--     build = "deno task --quiet build:fast",
--     config = function()
--         require("peek").setup()
--         vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
--         vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
--     end,
-- }

-- return {
--     {
--         "toppair/peek.nvim",
--         event = { "VeryLazy" },
--         build = "deno task --quiet build:fast",
--         config = function()
--             require("peek").setup({
--                 filetype = { 'markdown', 'conf' }
--             })
--             vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
--             vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
--         end,
--     },
-- }


-- return {
--     "iamcco/markdown-preview.nvim",
--     cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--     ft = { "markdown" },
--     build = function() vim.fn["mkdp#util#install"]() end,
-- }

return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}
