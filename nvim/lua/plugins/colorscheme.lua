-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  -- upstream theme installed so we can inherit from it
  {
    "folke/tokyonight.nvim",
    lazy = false, -- load on startup
    priority = 1000,
  },

  -- tell LazyVim which colorscheme to use on startup
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ares",
    },
  },
}
