return {
  -- add catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      integrations = {
        telescope = true,
        treesitter = true,
        mason = true,
        which_key = true,
        indent_blankline = { enabled = true },
        mini = { enabled = true },
      },
    },
  },

  -- tell LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
