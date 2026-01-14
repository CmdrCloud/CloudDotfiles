-- ~/.config/nvim/lua/ares/highlights.lua
-- Applies the "tron ares" palette to many common groups (heirline/lualine/plugins included)
local M = {}

local function h(name, opts)
  vim.api.nvim_set_hl(0, name, opts)
end

M.setup = function(P)
  -- core
  h("Normal", { fg = P.fg, bg = P.bg })
  h("NormalNC", { fg = P.muted1, bg = P.bg })
  h("CursorLine", { bg = "none" })
  h("CursorColumn", { bg = P.bg2 })
  h("LineNr", { fg = P.muted2, bg = P.bg })
  h("CursorLineNr", { fg = P.red, bold = true })
  h("SignColumn", { bg = P.bg })
  h("VertSplit", { fg = P.muted2 })
  h("NonText", { fg = P.muted2 })
  h("Directory", { fg = P.off_white })

  -- selection & search
  h("Visual", { bg = P.muted2, fg = P.bg })
  h("Search", { fg = P.bg, bg = P.orange, bold = true })
  h("IncSearch", { fg = P.bg, bg = P.red_strong, bold = true })
  h("MatchParen", { bg = P.red, underline = true })

  -- basics / syntax
  h("Comment", { fg = P.muted1, italic = true })
  h("Constant", { fg = P.orange })
  h("String", { fg = P.off_white })
  h("Character", { fg = P.off_white })
  h("Number", { fg = P.light_grey })
  h("Boolean", { fg = P.red })
  h("Identifier", { fg = P.fg })
  h("Function", { fg = P.orange })
  h("Method", { fg = P.orange })
  h("Type", { fg = P.fg, bold = true })
  h("Keyword", { fg = P.red, bold = true })
  h("Operator", { fg = P.red })
  h("Delimiter", { fg = P.light_grey }) -- brackets, commas
  h("Punctuation", { fg = P.red_strong })

  -- Treesitter captures (link / explicit)
  h("@keyword", { fg = P.red, bold = true })
  h("@conditional", { fg = P.red })
  h("@repeat", { fg = P.red })
  h("@function", { fg = P.orange })
  h("@method", { fg = P.orange })
  h("@type", { fg = P.fg })
  h("@variable", { fg = P.fg })
  h("@property", { fg = P.fg })
  h("@constant", { fg = P.orange })
  h("@string", { fg = P.off_white })
  -- link some groups to keep plugin compatibility
  vim.cmd("highlight link TSKeyword Keyword")
  vim.cmd("highlight link TSFunction Function")
  vim.cmd("highlight link TSString String")

  -- UI popups / floating windows
  h("NormalFloat", { fg = P.fg, bg = P.bg2 })
  h("FloatBorder", { fg = P.muted2, bg = P.bg2 })
  h("Pmenu", { fg = P.fg, bg = P.bg2 })
  h("PmenuSel", { fg = P.bg, bg = P.red, bold = true })
  h("PmenuSbar", { bg = P.bg2 })
  h("PmenuThumb", { bg = P.muted2 })

  -- statusline / winbar / tabline
  h("StatusLine", { fg = P.bg, bg = P.bg, bold = true })
  h("StatusLineNC", { fg = P.muted1, bg = P.bg })
  h("StatusLineMode", { fg = P.bg, bg = P.red }) -- heirline/lualine pieces can use this
  h("StatusLineGitBranch", { fg = P.orange, bg = P.bg2 })
  h("TabLine", { fg = P.muted1, bg = P.bg2 })
  h("TabLineSel", { fg = P.bg, bg = P.red })
  h("WinBar", { fg = P.muted1, bg = P.bg })
  h("WinBarNC", { link = "Comment" })

  -- bufferline / telescope / treesitter context
  h("BufferLineBackground", { fg = P.muted1, bg = P.bg })
  h("BufferLineBufferSelected", { fg = P.fg, bg = P.bg2, bold = true })
  h("BufferLineIndicatorSelected", { fg = P.red, bg = P.bg2 })
  h("TelescopeNormal", { fg = P.fg, bg = P.bg2 })
  h("TelescopeBorder", { fg = P.muted2, bg = P.bg2 })
  h("TreesitterContext", { bg = P.bg2 })

  -- diagnostics & git signs
  h("DiagnosticError", { fg = P.red_strongest })
  h("DiagnosticWarn", { fg = P.yellow })
  h("DiagnosticInfo", { fg = P.fg })
  h("DiagnosticHint", { fg = P.off_white })
  h("GitSignsAdd", { fg = P.blue or P.off_white }) -- fallback
  h("GitSignsChange", { fg = P.orange })
  h("GitSignsDelete", { fg = P.red })
  h("DiffDelete", { bg = P.red_strong, fg = P.bg })

  -- LSP / navic / inlay hints
  h("LspInlayHint", { fg = P.muted2, italic = true })
  h("LspDiagnosticsDefaultError", { fg = P.red_strong })
  h("LspDiagnosticsDefaultWarning", { fg = P.yellow })
  h("LspDiagnosticsDefaultInformation", { fg = P.fg })
  h("LspDiagnosticsDefaultHint", { fg = P.off_white })

  -- completion kinds (nvim-cmp)
  h("CmpItemKindFunction", { fg = P.orange })
  h("CmpItemKindMethod", { fg = P.orange })
  h("CmpItemKindVariable", { fg = P.fg })
  h("CmpItemKindKeyword", { fg = P.red })

  -- notify / quickfix / special
  h("NotifyERRORBorder", { fg = P.red_strong })
  h("NotifyWARNBorder", { fg = P.yellow })
  h("NotifyINFOBorder", { fg = P.fg })
  h("QuickFixLine", { link = "Normal" })

  -- small accessibility tweaks
  h("VisualNOS", { fg = P.fg })
  h("Underlined", { underline = true })
  h("MoreMsg", { fg = P.red })
  h("Question", { fg = P.red })

  -- keep links used by other plugin themes to stable groups
  vim.cmd("highlight link DiagnosticSignWarn DiagnosticWarn")
  vim.cmd("highlight link DiagnosticSignError DiagnosticError")
  vim.cmd("highlight link DiagnosticSignInfo DiagnosticInfo")
end

return M
