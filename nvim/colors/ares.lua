-- colors/ares.lua — wrapper that loads tokyonight then applies your overrides
if vim.g.colors_name then
  vim.cmd("highlight clear")
end
vim.opt.termguicolors = true

-- configure the upstream theme (optional)
-- change options or remove if you prefer defaults
require("tokyonight").setup({
  style = "storm", -- 'storm' | 'night' | 'day'
  transparent = false,
  dim_inactive = false,
})

-- load the upstream colorscheme (this sets a baseline)
vim.cmd("colorscheme tokyonight")

-- tell vim the active name is 'ares'
vim.g.colors_name = "ares"

-- now apply your custom palette/overrides
local P = require("ares.palette").get() -- keep palette.lua
require("ares.highlights").setup(P) -- your override module
