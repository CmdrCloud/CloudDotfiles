-- ~/.config/nvim/colors/ares.lua
-- This file is loaded by :colorscheme ares
if vim.g.colors_name then
  vim.cmd("highlight clear")
end
vim.o.background = "dark"
vim.g.colors_name = "ares"

local palette = require("ares.palette").get()
require("ares.highlights").setup(palette)
