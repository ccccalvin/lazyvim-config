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
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<Leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
