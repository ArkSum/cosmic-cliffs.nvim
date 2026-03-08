local M = {}

local colors = {
    black = "#18091b",
    bright_black = "#3d2b40",
    red = "#db4343",
    bright_red = "#ed8f8f",
    green = "#df9c5e",
    bright_green = "#efab94",
    yellow = "#d27445",
    bright_yellow = "#edbaa0",
    blue = "#7930c3",
    bright_blue = "#c8a7e9",
    magenta = "#b559ba",
    bright_magenta = "#e1b5e4",
    cyan = "#4354db",
    bright_cyan = "#939deb",
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

    -- BLACKS (DIM)
    set(0, "CursorLine", { bg = colors.bright_black })

    -- WHITES
    -- set(0, "Normal", { fg = colors.white })
    -- REDS
    set(0, "Removed", { fg = colors.bright_red })

    -- GREENS -> YELLOWS
    set(0, "Comment", { fg = colors.green })
    set(0, "String", { fg = colors.bright_green })
    set(0, "Added", { fg = colors.bright_green })

    -- YELLOWS -> ORANGES
    set(0, "Identifier", { fg = colors.yellow })
    set(0, "@lsp.type.variable", { fg = colors.bright_yellow })
    set(0, "StatusLine", { fg = colors.bright_yellow })

    -- MAGENTAS
    set(0, "Statement", { fg = colors.magenta })
    set(0, "Keyword", { fg = colors.magenta })
    set(0, "@lsp.type.parameter", { fg = colors.bright_magenta })

    -- BLUES -> PURPLES
    set(0, "VertLine", { fg = colors.blue })
    set(0, "Constant", { fg = colors.blue })
    set(0, "Boolean", { fg = colors.blue })
    set(0, "Number", { fg = colors.bright_blue })

    -- CYANS -> BLUES
    set(0, "StorageClass", { fg = colors.cyan })
    set(0, "Changed", { fg = colors.bright_cyan })
    set(0, "Structure", { fg = colors.cyan })
    set(0, "Function", { fg = colors.bright_cyan })

    -- GRAYS
    set(0, "Visual", { bg = colors.gray })
    set(0, "LineNr", { fg = colors.bright_black })

    -- NEOTREE
    set(0, "NeoTreeFloatBorder", { fg = colors.bright_magenta })
    set(0, "NeoTreeTitleBar", { fg = colors.magenta })
    set(0, "NeoTreeNormal", { fg = colors.white })

    set(0, "TelescopePromptBorder", { fg = colors.white })
    set(0, "TelescopePromptNormal", { fg = colors.white })
    set(0, "TelescopePromptTitle", { fg = colors.white })
    set(0, "TelescopePromptCounter", { fg = colors.bright_blue })
    set(0, "TelescopePromptPrefix", { fg = colors.bright_green })

    set(0, "TelescopeResultsBorder", { fg = colors.bright_white })
    set(0, "TelescopeResultsNormal", { fg = colors.bright_blue })
    set(0, "TelescopeResultsTitle", { fg = colors.bright_cyan })
    set(0, "TelescopeSelectionCaret", { fg = colors.bright_red })

    set(0, "TelescopePreviewBorder", { fg = colors.bright_white })
    set(0, "TelescopePreviewNormal", { fg = colors.white })
    set(0, "TelescopePreviewTitle", { fg = colors.bright_yellow })
end

return M
