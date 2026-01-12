-- ~/.config/nvim/lua/ares/highlights.lua
local M = {}

local function set(name, opts)
  vim.api.nvim_set_hl(0, name, opts)
end

M.setup = function(P)
  -- core
  set("Normal", { fg = P.fg, bg = P.bg })
  set("NormalNC", { fg = P.muted1, bg = P.bg })
  set("CursorLine", { bg = "none" })
  set("LineNr", { fg = P.muted2 })
  set("CursorLineNr", { fg = P.red, bold = true })

  -- keywords / control flow
  set("Keyword", { fg = P.red_strong })
  set("Conditional", { fg = P.orange })
  set("Repeat", { fg = P.blue })
  set("Structure", { fg = P.off_white })
  set("Variable", { fg = P.red })
  set("Number", { fg = P.off_white })
  set("String", { fg = P.off_white })

  -- functions, vars, types, strings
  set("Function", { fg = P.red })
  set("Identifier", { fg = P.fg })
  set("Type", { fg = P.fg })
  set("String", { fg = P.off_white })

  -- punctuation
  set("Delimiter", { fg = P.light_grey })
  set("Paren", { fg = P.off_white })

  -- treesitter captures (cover common ones)
  set("@keyword", { fg = P.red_strong })
  set("@conditional", { fg = P.orange })
  set("@function", { fg = P.red })
  set("@method", { fg = P.orange })
  set("@variable", { fg = P.blue })
  set("@property", { fg = P.fg })
  set("@string", { fg = P.off_white })
  set("@constant", { fg = P.orange })

  -- UI & popups
  set("StatusLine", { fg = P.bg, bg = P.bg2, bold = true })
  set("StatusLineNC", { fg = P.muted1, bg = P.bg })
  set("Pmenu", { fg = P.fg, bg = P.bg2 })
  set("PmenuSel", { fg = P.bg, bg = P.red, bold = true })
  set("TelescopeNormal", { fg = P.fg, bg = P.bg2 })
  set("FloatBorder", { fg = P.muted2, bg = P.bg2 })

  -- diagnostics / git
  set("DiagnosticError", { fg = P.red_strong })
  set("DiagnosticWarn", { fg = P.yellow })
  set("DiagnosticInfo", { fg = P.fg })
  set("GitSignsAdd", { fg = P.off_white })
  set("GitSignsChange", { fg = P.orange })
  set("GitSignsDelete", { fg = P.red })

  -- semantic tokens (LSP) — make them follow your palette
  set("LspDiagnosticsDefaultError", { fg = P.red_strong })
  set("LspDiagnosticsDefaultWarning", { fg = P.yellow })
  set("LspDiagnosticsDefaultInformation", { fg = P.fg })
  set("LspDiagnosticsDefaultHint", { fg = P.off_white })

  -- optional: link groups (safer for some plugins)
  vim.cmd("highlight link TSKeyword Keyword")
  vim.cmd("highlight link TSFunction Function")
  vim.cmd("highlight link TSString String")
  vim.cmd("highlight link Operator Keyword")
end

return M
