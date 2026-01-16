-- ~/.config/nvim/colors/ares.lua
-- Extended starter file: sets a wide set of highlight groups you can tweak one-by-one.
-- Start from your snippet and then a big list of groups to edit.
vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

-- start by inheriting tokyonight
vim.cmd("colorscheme tokyonight")

vim.g.colors_name = "ares"
vim.opt.termguicolors = true

-- quick helper
local set = vim.api.nvim_set_hl

-- Palette — edit these first to change large families quickly
local P = {
  bg = "#161618",
  bg2 = "#141417",
  fg = "#E8E8E2",
  muted = "#6A6A6A",
  red = "#A60303",
  red_bright = "#FF2700",
  red_strong = "#F21905",
  red_light = "#F7948D",
  orange = "#F26B1D",
  yellow = "#F2A81D",
  green = "#7EE787",
  cyan = "#7aa2f7",
  light_blue = "#A7EBF2",
  purple = "#BBADD9",
}

-- Core UI & windows
set(0, "Normal", { fg = P.fg, bg = P.bg }) -- main text
set(0, "NormalNC", { fg = P.muted, bg = P.bg2 }) -- non-current windows
set(0, "CursorLine", { bg = "none" }) -- current line background
set(0, "CursorColumn", { bg = P.bg2 })
set(0, "CursorLineNr", { fg = P.red, bold = true }) -- current line number
set(0, "LineNr", { fg = P.muted }) -- line numbers
set(0, "SignColumn", { bg = P.bg }) -- gutter
set(0, "FoldColumn", { bg = P.bg })
set(0, "VertSplit", { fg = P.bg }) -- split separator
set(0, "WinSeparator", { fg = P.bg })
set(0, "ColorColumn", { bg = P.bg })
set(0, "NonText", { fg = P.muted })
set(0, "Visual", { bg = "#333333" }) -- selection
set(0, "VisualNOS", { fg = P.fg })
set(0, "Search", { fg = P.bg, bg = P.cyan }) -- :set hlsearch
set(0, "IncSearch", { fg = P.bg, bg = P.orange }) -- incremental search
set(0, "MatchParen", { bg = P.red, underline = true }) -- matching paren
set(0, "Pmenu", { fg = P.fg, bg = "#0a0a0a" }) -- completion menu
set(0, "PmenuSel", { fg = P.fg, bg = "#4a4a4a", bold = true })
set(0, "PmenuSbar", { bg = P.bg2 })
set(0, "PmenuThumb", { bg = P.muted })
set(0, "NormalFloat", { fg = P.fg, bg = P.bg2 }) -- floats
set(0, "FloatBorder", { fg = P.fg, bg = P.bg2 })
set(0, "QuickFixLine", { link = "Normal" })
set(0, "Folded", { bg = "#2e2e2e" })
set(0, "Directory", { fg = P.fg })

-- Statusline / tabline / winbar
set(0, "StatusLine", { fg = P.bg, bg = "#0a0a0a", bold = true })
set(0, "StatusLineNC", { fg = P.fg, bg = P.muted })
set(0, "StatusLineMode", { fg = P.fg, bg = P.red_strong }) -- mode block
set(0, "TabLine", { fg = P.fg, bg = P.bg2 })
set(0, "TabLineSel", { fg = P.bg, bg = P.red_strong })
set(0, "WinBar", { fg = P.fg, bg = P.bg })
set(0, "WinBarNC", { link = "Comment" })

-- Basic syntax groups (what they affect)
set(0, "Comment", { fg = P.muted, italic = true }) -- comments
set(0, "Constant", { fg = P.orange }) -- consts/enums
set(0, "String", { fg = P.purple }) -- string literals
set(0, "Character", { fg = P.purple }) -- char literals
set(0, "Number", { fg = P.orange }) -- numbers
set(0, "Boolean", { fg = P.orange }) -- booleans
set(0, "Identifier", { fg = P.red_bright }) -- variable names
set(0, "Function", { fg = P.red_strong }) -- function names/defs
set(0, "Method", { fg = P.orange }) -- method names
set(0, "Type", { fg = P.red_light, bold = true }) -- types, classes
set(0, "StorageClass", { fg = P.red })
set(0, "Keyword", { fg = P.red_strong }) -- if/then/for/return etc
set(0, "Conditional", { fg = P.purple }) -- if/else
set(0, "Repeat", { fg = P.purple }) -- for/while
set(0, "Operator", { fg = P.cyan }) -- + - = => etc
set(0, "Delimiter", { fg = P.fg }) -- brackets/commas
set(0, "Punctuation", { fg = P.fg }) -- punctuation
set(0, "Special", { fg = P.red }) -- special tokens
set(0, "Underlined", { underline = true })
set(0, "Todo", { fg = P.yellow, bg = P.bg2 }) -- TODO/FIXME

-- Treesitter captures (use @names where supported)
-- Example: @keyword affects if/else/for
set(0, "@comment", { link = "Comment" })
set(0, "@string", { link = "String" })
set(0, "@number", { link = "Number" })
set(0, "@boolean", { link = "Boolean" })
set(0, "@function", { link = "Function" })
set(0, "@function.call", { fg = P.orange })
set(0, "@method", { link = "Method" })
set(0, "@variable", { link = "Identifier" })
set(0, "@property", { fg = P.red_light })
set(0, "@parameter", { fg = P.muted })
set(0, "@keyword", { link = "Keyword" })
set(0, "@conditional", { link = "Conditional" })
set(0, "@repeat", { link = "Repeat" })
set(0, "@type", { link = "Type" })
set(0, "@constant", { link = "Constant" })
set(0, "@operator", { link = "Operator" })
set(0, "@punctuation", { link = "Punctuation" })
set(0, "@punctuation.delimiter", { link = "Delimiter" })
set(0, "@punctuation.bracket", { link = "Delimiter" })
set(0, "@tag", { fg = P.fg })
set(0, "@attribute", { fg = P.muted })
set(0, "@namespace", { fg = P.muted })
set(0, "@text", { fg = P.fg })

-- LSP / Diagnostics
set(0, "DiagnosticError", { fg = P.red_strong })
set(0, "DiagnosticWarn", { fg = P.yellow })
set(0, "DiagnosticInfo", { fg = P.cyan })
set(0, "DiagnosticHint", { fg = P.green })
set(0, "DiagnosticFloatingError", { link = "DiagnosticError" })
set(0, "DiagnosticFloatingWarn", { link = "DiagnosticWarn" })
set(0, "DiagnosticVirtualTextError", { link = "DiagnosticError" })
set(0, "DiagnosticVirtualTextWarn", { link = "DiagnosticWarn" })
set(0, "DiagnosticSignError", { link = "DiagnosticError" })
set(0, "DiagnosticSignWarn", { link = "DiagnosticWarn" })
set(0, "LspInlayHint", { fg = P.muted, italic = true })
set(0, "LspReferenceText", { bg = "#2b2b2b" })
set(0, "LspReferenceRead", { bg = "#2b2b2b" })
set(0, "LspReferenceWrite", { bg = "#2b2b2b" })

-- Git / diff
set(0, "GitSignsAdd", { fg = P.green })
set(0, "GitSignsChange", { fg = P.orange })
set(0, "GitSignsDelete", { fg = P.red })
set(0, "DiffAdd", { bg = "#233022" })
set(0, "DiffChange", { bg = "#3a2b14" })
set(0, "DiffDelete", { bg = "#4C1919" })
set(0, "DiffText", { bg = "#2b3a2b" })

-- Completion (nvim-cmp)
set(0, "CmpItemKind", { fg = P.muted })
set(0, "CmpItemKindFunction", { fg = P.orange })
set(0, "CmpItemKindMethod", { fg = P.orange })
set(0, "CmpItemKindVariable", { fg = P.fg })
set(0, "CmpItemKindKeyword", { fg = P.red })
set(0, "CmpItemAbbr", { fg = P.fg })
set(0, "CmpItemAbbrMatch", { fg = P.orange })
set(0, "CmpItemAbbrMatchFuzzy", { fg = P.orange })

-- Telescope
set(0, "TelescopeNormal", { fg = P.fg, bg = P.bg2 })
set(0, "TelescopeBorder", { fg = P.muted, bg = P.bg2 })
set(0, "TelescopePromptNormal", { fg = P.fg, bg = P.bg2 })
set(0, "TelescopePromptPrefix", { fg = P.red })
set(0, "TelescopePromptTitle", { fg = P.bg, bg = P.red })
set(0, "TelescopeResultsTitle", { fg = P.bg, bg = P.bg2 })

-- Dashboard / Snacks
set(0, "DashboardHeader", { fg = P.fg })
set(0, "DashboardDesc", { fg = P.red_strong }) -- menu items (Find File, etc)
set(0, "DashboardIcon", { fg = P.red_strong })
set(0, "DashboardFooter", { fg = P.red_strong }) -- 3/44 plugins and ms

set(0, "SnacksDashboardDesc", { fg = P.red_strong })
set(0, "SnacksDashboardIcon", { fg = P.red_strong })
set(0, "SnacksDashboardFooter", { fg = P.red_strong })

-- Bufferline (common groups)
set(0, "BufferLineBackground", { fg = P.muted, bg = P.bg })
set(0, "BufferLineBufferSelected", { fg = P.fg, bg = P.bg2, bold = true })
set(0, "BufferLineIndicatorSelected", { fg = P.red, bg = P.bg2 })

-- Nvim-tree / Neo-tree
set(0, "NvimTreeNormal", { fg = P.fg, bg = P.bg })
set(0, "NvimTreeFolderIcon", { fg = P.orange })
set(0, "NvimTreeRootFolder", { fg = P.fg })
set(0, "NvimTreeGitDeleted", { fg = P.red_bright })
set(0, "NvimTreeGitStaged", { fg = P.orange })
set(0, "NvimTreeIndentMarker", { fg = P.muted })

-- Notify / messages
set(0, "NotifyERRORBorder", { fg = P.red_strong })
set(0, "NotifyWARNBorder", { fg = P.yellow })
set(0, "NotifyINFOBorder", { fg = P.cyan })
set(0, "ErrorMsg", { fg = P.red_strong })
set(0, "WarningMsg", { fg = P.yellow })

-- Misc
set(0, "Conceal", { fg = P.muted })
set(0, "SpellBad", { fg = P.red, undercurl = true })
set(0, "SpellCap", { fg = P.orange, undercurl = true })
set(0, "Folded", { fg = P.muted, bg = "#2b2b2b" })
set(0, "MatchWord", { bg = "#2b2b2b" })

-- Links (safe fallbacks)
vim.cmd("highlight link TSKeyword Keyword")
vim.cmd("highlight link TSFunction Function")
vim.cmd("highlight link TSString String")
vim.cmd("highlight link @keyword Keyword")
vim.cmd("highlight link @function Function")

-- done — tweak the P table and the individual set(...) lines above
