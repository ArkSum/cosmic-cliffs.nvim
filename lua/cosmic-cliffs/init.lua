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

    set(0, "@lsp.type.variable", { fg = colors.bright_orange })

    -- STANDARD HIGHLIGHT GROUPS
    set(0, "Visual", { bg = colors.gray })
    set(0, "LineNr", { fg = colors.bright_black })
    set(0, "CursorLine", { bg = colors.bright_black })
    set(0, "Identifier", { fg = colors.orange })
    set(0, "StatusLine", { fg = colors.bright_orange })
    set(0, "Removed", { fg = colors.bright_red })
    set(0, "Comment", { fg = colors.yellow })
    set(0, "String", { fg = colors.bright_yellow })
    set(0, "Added", { fg = colors.bright_yellow })
    set(0, "Statement", { fg = colors.magenta })
    set(0, "Keyword", { fg = colors.magenta })
    set(0, "VertLine", { fg = colors.purple })
    set(0, "Constant", { fg = colors.purple })
    set(0, "Boolean", { fg = colors.purple })
    set(0, "Number", { fg = colors.bright_purple })
    set(0, "StorageClass", { fg = colors.blue })
    set(0, "Changed", { fg = colors.bright_blue })
    set(0, "Structure", { fg = colors.blue })
    set(0, "Function", { fg = colors.bright_blue })

    -- LSP HIGHLIGHT GROUPS
    set(0, "@lsp.type.parameter", { fg = colors.bright_magenta })

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
