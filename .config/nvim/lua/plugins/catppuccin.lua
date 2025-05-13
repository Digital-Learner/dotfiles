return {
	{
	"catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,

  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- auto, latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {
        -- to change theme similar to kanagawa example in MrJakob's
        -- Neovim from Scratch: Part 2 video, which takes definitions from
        -- https://github.com/rebelot/kanagawa.nvim/blob/master/lua/
          -- kanagawa/highlights/treesitter.lua

        -- would use as base the following file
        -- https://github.com/catppuccin/nvim/blob/main/lua/
          -- catppuccin/groups/integrations/treesitter.lua
        --
        },
      custom_highlights = {},
    })

    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
  end
}
}
