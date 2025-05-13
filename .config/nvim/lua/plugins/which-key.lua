return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration goes here
    -- or leave it empty to sue the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
