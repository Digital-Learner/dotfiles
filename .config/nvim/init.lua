vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Enable break indent
vim.opt.breakindent = true

-- Show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Show line under cursor
vim.opt.cursorline = true

-- Store undos between sessions
vim.opt.undofile = true

--Enable mouse mode (useful for resizing splits)
vim.opt.mouse = "a"

-- Don't show mode, its in status line
vim.opt.showmode = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--   See `:help 'list'`
--   See `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = {
  trail = "-",
  eol = "↲",
  tab = "» ",
  space = "·",
  nbsp = "␣",
}

-- Minimum number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 15

-- Highlight text for some time after yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = "Highlight yank",
})

vim.g.mapleader= " "

require("config.lazy")
