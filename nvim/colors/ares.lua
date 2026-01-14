-- ~/.config/nvim/colors/ares.lua
if vim.g.colors_name then
  vim.cmd("highlight clear")
end
vim.opt.termguicolors = true
vim.g.colors_name = "ares"

local P = require("ares.palette").get()
require("ares.highlights").setup(P)
