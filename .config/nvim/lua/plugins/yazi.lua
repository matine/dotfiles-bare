-- Opens yazi in a floating window over nvim, so nvim stays the long-running
-- process. Enter on a file loads it as a buffer here instead of spawning a
-- second nvim, which is what makes toggling back and forth possible.
return {
  "mikavilpas/yazi.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  opts = {
    -- Leave directory arguments to snacks explorer; this keeps netrw untouched.
    open_for_directories = false,
    keymaps = {
      show_help = "<f1>",
    },
  },
  keys = {
    -- Shadows LazyVim's "Split Window Below"; <c-w>s still does that.
    { "<leader>-", "<cmd>Yazi<cr>", mode = { "n", "v" }, desc = "Open yazi at the current file" },
    -- Shadows LazyVim's "Increase Window Height"; smart-splits has that on <c-a-k>.
    { "<c-up>", "<cmd>Yazi toggle<cr>", desc = "Resume the last yazi session" },
  },
}
