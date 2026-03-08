local M = {}

local colors = {
    black = "#080309",
    bright_black = "#3e2e40",
    red = "#db4343",
    bright_red = "#ed8f8f",
    green = "#dd9148",
    bright_green = "#efc094",
    yellow = "#df9c5e",
    bright_yellow = "#f1cdab",
    blue = "#414fbe",
    bright_blue = "#929ada",
    magenta = "#b559ba",
    bright_magenta = "#e1b5e4",
    cyan = "#5785b7",
    bright_cyan = "#97b5d7",
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

    -- TODO: Fix this
    -- Here is a comment
    set(0, "Normal", {
        bg = colors.black, fg = colors.white
    })
    set(0, "Comment", {
        fg = colors.green
    })
    set(0, "CursorLine", {
        bg = colors.bright_black
    })
    set(0, "Identifier", { fg = colors.yellow })
    set(0, "Keyword", { fg = colors.magenta })
    set(0, "LineNr", { fg = colors.bright_black })
    set(0, "VertLine", { fg = colors.blue })
    set(0, "String", { fg = colors.bright_green })
    set(0, "Function", { fg = colors.bright_cyan })
    set(0, "Constant", { fg = colors.blue })
    set(0, "Boolean", { fg = colors.blue })
    local value = true
    set(0, "Number", { fg = colors.bright_blue })
    set(0, "StatusLine", { fg = colors.bright_yellow })
    set(0, "Visual", { bg = colors.gray })
    set(0, "Pmenu", { fg = colors.bright_white, bg = colors.black })
    set(0, "Typedef", { fg = colors.bright_cyan })
    set(0, "Type", { fg = colors.bright_black })
    set(0, "Parameter", { fg = colors.bright_yellow })
end

return M
