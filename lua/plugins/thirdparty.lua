return {
  {
    "ojroques/vim-oscyank",
    event = "VeryLazy", -- load after UI is ready
    config = function()
      -- ensure plugin knows we’re in Alacritty (default usually works)
      vim.g.oscyank_term = "alacritty"

      -- Map <leader>y in visual mode to yank via OSC 52
      vim.keymap.set("v", "<Leader>y", ":OSCYankVisual<CR>", {
        desc = "Yank selection via OSC52 → Windows clipboard",
      })
    end,
  },
}
