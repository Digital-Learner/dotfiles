return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {
      "3rd/image.nvim",
      build = false,
      opts = {
        processor = "magick_cli",
      }
    }, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          -- add extension names you want to explicitly exclude
          -- '.git'
          -- '.DS_Store'
          -- 'thumbs.db'
        },
        never_show = {
          -- '.git'
        },
      },
    },
    -- fill any relevant options here
  vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', { desc = 'Show Neotree file explorer' }),
  },
}
