-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    local o = vim.opt_local
    o.expandtab = true
    o.shiftwidth = 4
    o.tabstop = 4
    o.softtabstop = 4
  end,
})
