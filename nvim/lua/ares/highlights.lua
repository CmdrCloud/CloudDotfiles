-- ~/.config/nvim/lua/ares/highlights.lua
local M = {}
local function h(name, opts)
  vim.api.nvim_set_hl(0, name, opts)
end

M.setup = function(P)
  -- core
  h("Normal", { fg = P.fg, bg = P.bg })
  h("NormalNC", { fg = P.muted1, bg = P.bg })
  h("LineNr", { fg = P.muted2 })
  h("CursorLine", { bg = "none" })
  h("CursorLineNr", { fg = P.red, bold = true })

  -- keywords / punctuation
  h("Keyword", { fg = P.red, bold = true })
  h("Operator", { fg = P.red })
  h("Delimiter", { fg = P.red })

  -- functions / variables / strings
  h("Function", { fg = P.orange })
  h("Identifier", { fg = P.fg })
  h("String", { fg = P.off_white })

  -- treesitter
  h("@keyword", { fg = P.red, bold = true })
  h("@function", { fg = P.orange })
  h("@variable", { fg = P.fg })
  h("@string", { fg = P.off_white })

  -- UI
  h("Pmenu", { fg = P.fg, bg = P.bg2 })
  h("PmenuSel", { fg = P.bg, bg = P.red, bold = true })
  h("StatusLine", { fg = P.bg, bg = P.red, bold = true })
  h("StatusLineNC", { fg = P.muted1, bg = P.bg })

  -- dashboard (lazyvim)
  h("DashboardDesc", { fg = P.red })
  h("DashboardFooter", { fg = P.red })
  h("DashboardIcon", { fg = P.red })
  h("SnacksDashboardDesc", { fg = P.red })
  h("SnacksDashboardFooter", { fg = P.red })
  h("SnacksDashboardIcon", { fg = P.red })

  -- diagnostics / git signs
  h("DiagnosticError", { fg = P.red_strong })
  h("DiagnosticWarn", { fg = P.yellow })
  h("GitSignsAdd", { fg = P.green })
  h("GitSignsChange", { fg = P.orange })
  h("GitSignsDelete", { fg = P.red })
end

return M
