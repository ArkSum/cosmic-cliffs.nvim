local M = {}

local colors = {
    black = "#18091b",
    bright_black = "#3d2b40",
    red = "#db4343",
    bright_red = "#ed8f8f",
    yellow = "#df9c5e",
    bright_yellow = "#efab94",
    orange = "#d27445",
    bright_orange = "#edbaa0",
    purple = "#7930c3",
    bright_purple = "#c8a7e9",
    magenta = "#b559ba",
    bright_magenta = "#e1b5e4",
    blue = "#4354db",
    bright_blue = "#939deb",
    white = "#e2c0bd",
    bright_white = "#f9f9f9",
    gray = "#674c6a"
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
    -- SYNTAX HIGHLIGHT GROUPS: Comment
    set(0, "Comment", { fg = colors.yellow })

    -- SYNTAX HIGHLIGHT GROUPS: Constants
    set(0, "Constant", { fg = colors.purple }) -- Top-level
    set(0, "String", { fg = colors.bright_yellow })
    set(0, "Character", { fg = colors.bright_yellow })
    set(0, "Number", { fg = colors.bright_purple })
    set(0, "Boolean", { fg = colors.purple })

    set(0, "Identifier", { fg = colors.orange })    -- Any variable name
    set(0, "Function", { fg = colors.bright_blue }) -- Function name

    -- SYNTAX HIGHLIGHT GROUPS: Statements
    set(0, "Statement", { fg = colors.magenta }) -- Top-level
    set(0, "Keyword", { fg = colors.magenta })

    -- SYNTAX HIGHLIGHT GROUPS: PreProcessor
    set(0, "PreProc", { fg = colors.magenta }) -- Top-level

    -- SYNTAX HIGHLIGHT GROUPS: Special
    -- This is the override that might have been giving me trouble
    set(0, "Special", { fg = colors.bright_magenta }) -- Top-level
    set(0, "SpecialChar", { fg = colors.magenta })

    -- SYNTAX HIGHLIGHT GROUPS: Types
    set(0, "Type", { fg = colors.magenta }) -- Top-level ???
    set(0, "StorageClass", { fg = colors.blue })
    set(0, "Structure", { fg = colors.blue })
    set(0, "Typedef", { fg = colors.blue })

    -- SYNTAX HIGHLIGHT GROUPS: Misc
    set(0, "Error", { fg = colors.bright_white, bg = colors.red })
    set(0, "Todo", { fg = colors.black, bg = colors.bright_magenta })


    -- SYNTAX HIGHLIGHT GROUPS: Diff
    set(0, "Added", { fg = colors.bright_yellow })
    set(0, "Changed", { fg = colors.bright_blue })
    set(0, "Removed", { fg = colors.bright_red })

    set(0, "VertLine", { fg = colors.purple })
    set(0, "StatusLine", { fg = colors.bright_orange })
    set(0, "LineNr", { fg = colors.bright_black })
    set(0, "CursorLine", { bg = colors.bright_black })
    set(0, "Visual", { bg = colors.gray })

    -- LSP HIGHLIGHT GROUPS
    set(0, "@lsp.type.parameter", { fg = colors.bright_magenta })
    set(0, "@lsp.type.variable", { fg = colors.bright_orange })

    -- NOICECMDLINE HIGHLIGHT GROUPS
    set(0, "NoiceCmdlinePopupBorder", { fg = colors.bright_magenta })

    -- NEOTREE HIGHLIGHT GROUPS
    set(0, "NeoTreeFloatBorder", { fg = colors.bright_magenta })
    set(0, "NeoTreeTitleBar", { fg = colors.magenta })
    set(0, "NeoTreeNormal", { fg = colors.white })

    -- TELESCOPE HIGHLIGHT GROUPS
    set(0, "TelescopePromptBorder", { fg = colors.white })
    set(0, "TelescopePromptNormal", { fg = colors.white })
    set(0, "TelescopePromptTitle", { fg = colors.white })
    set(0, "TelescopePromptCounter", { fg = colors.bright_purple })
    set(0, "TelescopePromptPrefix", { fg = colors.bright_yellow })

    set(0, "TelescopeResultsBorder", { fg = colors.bright_white })
    set(0, "TelescopeResultsNormal", { fg = colors.bright_purple })
    set(0, "TelescopeResultsTitle", { fg = colors.bright_blue })
    set(0, "TelescopeSelectionCaret", { fg = colors.bright_red })

    set(0, "TelescopePreviewBorder", { fg = colors.bright_white })
    set(0, "TelescopePreviewNormal", { fg = colors.white })
    set(0, "TelescopePreviewTitle", { fg = colors.bright_orange })
end

return M
