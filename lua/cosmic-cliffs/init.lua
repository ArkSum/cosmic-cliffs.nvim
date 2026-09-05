local M = {}

local colors = {
	black = "#0e091b",
	gray_1 = "#1c1431",
	gray_2 = "#31264d",
	gray_3 = "#4c3f70",
	gray_4 = "#6f6098",
	gray_5 = "#9f97b8",
	gray_6 = "#d6d3df",

  normal = "#ecdbd4",
  comment = "#6f6098",
  numeric = "#90e4e4",
  string = "#daa76e",
  keyword = "#c06054",
  const = "#8e4ad2",
  func = "#edbaa0",
  modules = "#3183ff",
  variables = "#7ab4ff",
  parameter = "#c4a2e6",

  git_mod = "#daa76e",
  git_unt = "#5fd4d4",
	git_cfl = "#db4343",
  git_del = "#ed8f8f",
  git_ign = "#6f6098",

  gut_del = "#ed8f8f",
  gut_add = "#7ab4ff",
  gut_mod = "#daa76e",

  ok = "#90e4e4",
  hint = "#3183ff",
  info = "#c4a2e6",
  warn = "#edbaa0",
  error = "#db4343",

  bracket1 = "#ffe2d7",
  bracket2 = "#eac0b9",
  bracket3 = "#d59e9b",
  bracket4 = "#bf7c7e",
  bracket5 = "#aa5a60",
  bracket6 = "#953842",

  ansiBlack = "#1c1431",
  ansiRed = "#db4343",
  ansiGreen = "#df9c5e",
  ansiYellow = "#d27445",
  ansiBlue = "#8e4ad2",
  ansiMagenta = "#d43adf",
  ansiCyan = "#3183ff",
  ansiWhite = "#d6d3df",
  ansiBrightBlack = "#31264d",
  ansiBrightRed = "#ed8f8f",
  ansiBrightGreen = "#daa76e",
  ansiBrightYellow = "#edbaa0",
  ansiBrightBlue = "#c4a2e6",
  ansiBrightMagenta = "#e1b5e4",
  ansiBrightCyan = "#7ab4ff",
  ansiBrightWhite = "#ffffff"
}

function M.setup()
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "cosmic-cliffs"

	local set = vim.api.nvim_set_hl

	-- These groups are in the order of the NAMING CONVENTIONS section of the
	-- syntax.txt help page. The exception is types, because they need to be done
	-- after defining the special groups
	-- What do some of the abbreviations and terms mean?
	-- NC: Non-current
	set(0, "Normal", { fg = colors.normal })
	set(0, "NormalNC", { fg = colors.normal })
	set(0, "Cursor", { bg = colors.ansiWhite, fg = colors.black })
	set(0, "Folded", { fg = colors.normal })
	set(0, "Title", { fg = colors.orange })

	-- SYNTAX HIGHLIGHTING GROUPS
	set(0, "Comment", { fg = colors.comment })

	-- Constants
	set(0, "Constant", { fg = colors.const }) -- Top-level
	set(0, "String", { fg = colors.string })
	set(0, "Character", { fg = colors.string })
	set(0, "Number", { fg = colors.numeric, bold = true })
	set(0, "Float", { fg = colors.numeric, bold = true })
	set(0, "Boolean", { fg = colors.const, bold = true })

	set(0, "Underlined", { fg = colors.ansiWhite })

	set(0, "Identifier", { fg = colors.variables }) -- Any variable name
	set(0, "Function", { fg = colors.func }) -- Function name

	-- Statements
	set(0, "Statement", { fg = colors.keyword }) -- Top-level
	set(0, "Keyword", { fg = colors.keyword })

	-- PreProcessor
	set(0, "PreProc", { fg = colors.keyword }) -- Top-level

	-- Special
	set(0, "Special", { fg = colors.const }) -- Top-level
	-- ^This^ also applies to the LazyVim main menu
	set(0, "SpecialChar", { fg = colors.const })

	-- Types
	set(0, "Type", { fg = colors.modules, bold = true }) -- Top-level, but only sort of.
	-- Built-in types for some reason fall under the Treesitter @type.builtin

	-- Misc
	set(0, "Error", { fg = colors.light_white, bg = colors.error })
	set(0, "Todo", { fg = colors.light_white, bg = colors.ansiYellow })

	-- Diff
	set(0, "Added", { fg = colors.gut_add })
	set(0, "Changed", { fg = colors.gut_mod })
	set(0, "Removed", { fg = colors.gut_del })

	-- Unknown types
	set(0, "TodoBgTODO", { fg = colors.ansiBrightWhite, bg = colors.git_unt })
	set(0, "TodoFgTODO", { fg = colors.git_unt })
	set(0, "TodoSignTODO", { fg = colors.git_unt })

  -- Code diagnostics
	set(0, "DiagnosticInfo", { fg = colors.info })
	set(0, "DiagnosticUnderlineInfo", { sp = colors.info, underline = true }) -- sp = special color (underlines, etc.)
	set(0, "DiagnosticHint", { fg = colors.hint })
	set(0, "DiagnosticUnderlineHint", { sp = colors.hint, underline = true })
	set(0, "DiagnosticOk", { fg = colors.ok })
	set(0, "DiagnosticUnderlineOk", { sp = colors.ok, underline = true })
	set(0, "DiagnosticWarn", { fg = colors.warn })
	set(0, "DiagnosticUnderlineWarn", { sp = colors.warn, underline = true })
	set(0, "DiagnosticError", { fg = colors.error })
	set(0, "DiagnosticUnderlineError", { sp = colors.error, underline = true })

	-- HIGHLIGHT GROUPS: Neovim
	set(0, "VertLine", { fg = colors.purple }) -- Doesn't seem to work
	-- PMENU = POP-UP MENU
	set(0, "Pmenu", { bg = colors.gray_3, fg = colors.white })
	-- PMENUSEL_BG = STATUSLINE_NORMAL_BG
	set(0, "PmenuSel", { bg = colors.gray_4, fg = colors.black })
	-- STATUSLINE = Line of text at the bottom of the interface
  -- Uses the lualine plugin, so those are the highlight groups used
	set(0, "lualine_a_normal", { bg = colors.red, fg = colors.light_white })
	set(0, "lualine_b_normal", { bg = colors.orange, fg = colors.light_white })
	set(0, "lualine_c_normal", { bg = colors.yellow, fg = colors.light_white })
	set(0, "lualine_x_normal", { bg = colors.magenta, fg = colors.light_white })
	set(0, "lualine_y_normal", { bg = colors.purple, fg = colors.light_white })
	set(0, "lualine_z_normal", { bg = colors.blue, fg = colors.light_white })
	set(0, "CursorLine", { bg = colors.light_black })
	set(0, "Visual", { bg = colors.gray_2 })
	set(0, "CurSearch", { fg = colors.black, bg = colors.light_yellow })
	set(0, "Search", { fg = colors.black, bg = colors.light_yellow })
	set(0, "CursorLine", { bg = colors.gray_2 })
	set(0, "Conceal", { fg = colors.gray_4 })
	set(0, "NonText", { fg = colors.gray_4 })
	-- set(0, "Pmenu", { fg = colors.icy_blue, bg = colors.black })
	set(0, "LineNrAbove", { fg = colors.gray_4 })
	set(0, "CursorLineNr", { fg = colors.gray_5 })
	set(0, "LineNrBelow", { fg = colors.gray_4 })

	-- TREESITTER HIGHLIGHT GROUPS
	set(0, "@type.builtin", { fg = colors.dark_blue, bold = true })
	set(0, "@variable", { fg = colors.light_blue })

	-- LSP HIGHLIGHT GROUPS
	set(0, "@lsp.type.parameter", { fg = colors.light_orange })
	set(0, "@lsp.type.variable", { fg = colors.light_blue })

	-- PLUGINS

	-- LAZYVIM
	-- Just for the expanded commit view
	-- set(0, "LazyCommit", { fg = colors.red })

	-- TELESCOPE
	set(0, "TelescopeNormal", { fg = colors.white })
	set(0, "TelescopePromptBorder", { fg = colors.white })

	-- NOICECMDLINE
	set(0, "NoiceCmdlinePopupBorder", { fg = colors.light_magenta })
	set(0, "NoiceCmdlineIcon", { fg = colors.magenta })
	set(0, "NoiceCmdline", { fg = colors.red })

	-- NEOTREE
	set(0, "NeoTreeFloatBorder", { fg = colors.light_magenta })
	set(0, "NeoTreeTitleBar", { fg = colors.magenta })
	set(0, "NeoTreeNormal", { fg = colors.white })
	set(0, "Directory", { fg = colors.gray_6 })
end

return M
