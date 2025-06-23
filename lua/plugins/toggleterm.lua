return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({

      -- choose your preferred dimensions:
      size = 20,
      direction = "float",
      float_opts = {
        border = "curved", -- or "single" / "double" / "shadow"
        winblend = 3,
      },
      -- automatically start in insert mode
      open_mapping = [[<a-i>]],
      start_in_insert = true,
    })
  end,
}
