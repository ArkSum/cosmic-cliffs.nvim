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
    blue = "#6c6ae4",
    bright_blue = "#b9b7f4",
    magenta = "#c895c2",
    bright_magenta = "#e9d3e7",
    cyan = "#5785b7",
    bright_cyan = "#97b5d7",
    white = "#e2c0bd",
    bright_white = "#f9f9f9",
}

function M.colorscheme()
    vim.cmd("highlight clear")
    vim.cmd("syntax reset")

    vim.o.background = "dark"
    vim.g.colors_name = "cosmic-cliffs"

    local set = vim.api.nvim_set_hl

    -- Here is a comment
    set(0, "Normal", { bg = colors.black, fg = colors.white })
    set(0, "Comment", { bg = colors.black, fg = colors.bright_black })
    set(0, "CursorLine", { bg = colors.bright_black })
    set(0, "LineNr", { fg = colors.white })
    set(0, "VertLine", { fg = colors.blue })
end

return M
