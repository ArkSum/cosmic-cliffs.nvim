local colors = {
  -- UI Colors: Basic backgrounds/foregrounds
	black = "#0e091b",
	gray_1 = "#1c1431",
	gray_2 = "#31264d",
	gray_3 = "#4c3f70",
	gray_4 = "#6f6098",
	gray_5 = "#9f97b8",
	gray_6 = "#d6d3df",

  -- Language Colors
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

  -- Git Colors
  git_mod = "#daa76e",
  git_unt = "#5fd4d4",
	git_cfl = "#db4343",
  git_del = "#ed8f8f",
  git_ign = "#6f6098",

  -- Git Gutter Colors
  gut_del = "#ed8f8f",
  gut_add = "#7ab4ff",
  gut_mod = "#daa76e",

  -- Neovim messages
  ok = "#90e4e4",
  hint = "#3183ff",
  info = "#c4a2e6",
  warn = "#f27e44",
  error = "#db4343",

  -- Terminal colors
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

local M = {}

function M.setup()
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "cosmic-cliffs"

	local set = vim.api.nvim_set_hl

	-- HIGHLIGHT GROUPS: Neovim
  set(0, "ColorColumn", { fg = colors.normal, bg = colors.gray_2 }) -- Used for the columns set with 'colorcolumn'
	set(0, "Conceal", { fg = colors.gray_4 }) -- Placeholder characters substituted for concealed text
	set(0, "CurSearch", { fg = colors.black, bg = colors.ansiBrightYellow }) -- Current match for the last serach pattern
	set(0, "Cursor", { bg = colors.ansiWhite, fg = colors.black }) -- Character under the cursor
	set(0, "CursorLine", { bg = colors.gray_2 }) -- Screen-line at the cursor, when 'cursorline' is set
	set(0, "Directory", { bg = colors.command }) -- Directory names
	set(0, "DiffAdd", { fg = colors.normal, bg = colors.git_add }) -- Diff mode: Added line
	set(0, "DiffChange", { fg = colors.normal, bg = colors.git_mod }) -- Diff mode: Changed line
	set(0, "DiffDelete", { fg = colors.normal, bg = colors.git_del }) -- Diff mode: Deleted line
	set(0, "Folded", { fg = colors.normal }) -- Line used for closed folds
	set(0, "LineNrAbove", { fg = colors.gray_4 }) -- Line number for when the 'relativenumber' option is set, above the cursor line.
	set(0, "LineNrBelow", { fg = colors.gray_4 }) -- Line number for when the 'relativenumber' option is set, below the cursor line.
	set(0, "CursorLineNr", { fg = colors.gray_6 }) -- Line number for when 'cursorline' option is set
  set(0, "MatchParen", { bg = colors.keyword, fg = colors.normal }) -- Character under the cursor or just before it, if it is a paired bracket and its match.
	set(0, "NonText", { fg = colors.gray_4 }) -- '@' at the end of the window, characters from 'showbreak' and other characters that don't exist in the text
	set(0, "Normal", { fg = colors.normal }) -- Normal text.
	set(0, "NormalNC", { fg = colors.normal }) -- Normal text in non-current windows
	set(0, "Pmenu", { bg = colors.gray_3, fg = colors.ansiWhite }) -- Popup menu: normal item
	set(0, "PmenuSel", { bg = colors.gray_4, fg = colors.black }) -- Popup menu: Selected item
	set(0, "PmenuBorder", { fg = colors.info }) -- Popup menu: border of popup menu
	set(0, "Search", { fg = colors.black, bg = colors.ansiYellow }) -- Last search pattern highlighting
	set(0, "TabLine", { fg = colors.normal, bg = colors.gray_2 }) -- Tabpages line, not active tabpage label
	set(0, "TabLineFill", { fg = colors.normal, bg = colors.gray_1 }) -- Tabpages line, where there are no labels
	set(0, "TabLineSel", { fg = colors.normal, bg = colors.gray_4, bold = true }) -- Tabpages line, active tabpage label

	set(0, "Title", { fg = colors.warn }) -- Titles for output from ":set all", ":autocmd", etc.
	set(0, "Visual", { bg = colors.gray_3 }) -- Visual mode selection
  set(0, "Whitespace", { fg = colors.gray_3 }) -- "nbsp", "space", "tab", "multispace", "lead", and "trail" in 'listchars'

	-- SYNTAX HIGHLIGHTING GROUPS
	set(0, "Comment", { fg = colors.comment }) -- any comment

	-- Constants
	set(0, "Constant", { fg = colors.const, bold = true }) -- any constant (non-variable value)
	set(0, "String", { fg = colors.string }) -- a string constant
	set(0, "Character", { fg = colors.string }) -- a character constant
	set(0, "Number", { fg = colors.numeric, bold = true }) -- an integer constant
	set(0, "Float", { fg = colors.numeric, bold = true }) -- a floating point constant
	set(0, "Boolean", { fg = colors.const, bold = true }) -- a boolean constant


	set(0, "Identifier", { fg = colors.variables }) -- any variable name
	set(0, "Function", { fg = colors.func }) -- function name (also: methods for classes)

	-- Statements
	set(0, "Statement", { fg = colors.keyword }) -- any statement
	set(0, "Conditional", { fg = colors.keyword }) -- if, then, else, endif, switch, etc.
  set(0, "Repeat", { fg = colors.keyword }) -- for, do, while, etc.
  set(0, "Label", { fg = colors.keyword }) -- case, default, etc.
  set(0, "Operator", { fg = colors.normal })  -- NOTE: This is different from others!

	set(0, "Keyword", { fg = colors.keyword }) -- any other keyword
	set(0, "Exception", { fg = colors.keyword }) -- try, catch, throw

	-- PreProcessor
	set(0, "PreProc", { fg = colors.keyword }) -- generic Preprocessor
  set(0, "Include", { fg = colors.keyword }) -- Preprocessor #include
  set(0, "Define", { fg = colors.keyword }) -- Preprocessor #define
  set(0, "Macro", { fg = colors.keyword }) -- Same as Define
  set(0, "PreCondit", { fg = colors.keyword }) -- Preprocessor #if, #else, #endif, etc.

	-- Types
	-- Built-in types for some reason fall under the Treesitter @type.builtin
	set(0, "Type", { fg = colors.modules, bold = true }) -- int, long, char, etc.
  set(0, "StorageClass", { fg = colors.modules, bold = true }) -- static, register, volatile, etc.
  set(0, "Structure", { fg = colors.modules, bold = true }) -- struct, union, enum, etc.
  set(0, "Typedef", { fg = colors.modules, bold = true }) -- a typedef

	-- Special
	set(0, "Special", { fg = colors.bracket1 }) -- any special symbol
	-- ^This^ also applies to the LazyVim main menu
	set(0, "SpecialChar", { fg = colors.bracket6 }) -- special character in a string constant
  -- This is something like \n in string constants
	set(0, "Tag", { fg = colors.bracket6 }) -- you can use CTRL-] on this (XML tag delimiters???)
  set(0, "Delimiter", { fg = colors.normal }) -- character that needs attention (period, comma, parentheses, etc.)
  set(0, "SpecialComment", { fg = colors.gray_5 }) -- special things inside a comment (who knows what that means)

	-- Misc
	set(0, "Underlined", { fg = colors.command }) -- text that stands out, HTML links

  set(0, "Ignore", { fg = colors.normal }) -- left blank, hidden (who knows what this means)

	set(0, "Error", { fg = colors.ansiBrightWhite, bg = colors.error }) -- any erroneous construct

	set(0, "Todo", { fg = colors.ansiBrightWhite, bg = colors.ansiYellow })  -- anything that needs extra attention;
  -- NOTE: This is overriden later by specific colorations!                -- mostly the keywords, TODO FIXME and XXX

	-- Diff
	set(0, "Added", { fg = colors.gut_add }) -- added line in a diff
	set(0, "Changed", { fg = colors.gut_mod }) -- changed line in a diff
	set(0, "Removed", { fg = colors.gut_del }) -- removed line in a diff

  -- END OF SYNTAX.TXT groups --

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


	-- TREESITTER HIGHLIGHT GROUPS
	set(0, "@type.builtin", { fg = colors.modules, bold = true })
	set(0, "@variable", { fg = colors.variables })

	-- LSP HIGHLIGHT GROUPS
	set(0, "@lsp.type.parameter", { fg = colors.parameter })
	set(0, "@lsp.type.variable", { fg = colors.variables })

	-- PLUGINS

	-- LAZYVIM
	-- Just for the expanded commit view
	-- set(0, "LazyCommit", { fg = colors.red })

	-- STATUSLINE = Line of text at the bottom of the interface
  -- Uses the lualine plugin, so those are the highlight groups used

	-- TELESCOPE
	set(0, "TelescopeNormal", { fg = colors.normal })
	set(0, "TelescopePromptBorder", { fg = colors.normal })

	-- NOICECMDLINE
	set(0, "NoiceCmdlinePopupBorder", { fg = colors.ansiBrightMagenta })
	set(0, "NoiceCmdlineIcon", { fg = colors.ansiMagenta })
	set(0, "NoiceCmdline", { fg = colors.ansiRed })

	-- NEOTREE
	set(0, "NeoTreeFloatBorder", { fg = colors.ansiBrightMagenta })
	set(0, "NeoTreeTitleBar", { fg = colors.ansiMagenta })
	set(0, "NeoTreeNormal", { fg = colors.normal })
	set(0, "Directory", { fg = colors.gray_6 })
end

return M
