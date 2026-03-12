local M = {}

local colors = {
    black = "#0e091b",
    light_black = "#3a2e5b",
    red = "#db4343",
    light_red = "#ed8f8f",
    yellow = "#df9c5e",
    semi_yellow = "#786049",
    light_yellow = "#deb484",
    orange = "#d27445",
    light_orange = "#edbaa0",
    purple = "#7930c3",
    light_purple = "#c8a7e9",
    magenta = "#b559ba",
    light_magenta = "#e1b5e4",
    vibrant_magenta = "#d43adf",
    dark_blue = "#456aff",
    medium_blue = "#939deb",
    light_blue = "#8ea7ff",
    white = "#e2c0bd",
    light_white = "#f9f9f9",
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


    -- SYNTAX HIGHLIGHTING GROUPS
    set(0, "Comment", { fg = colors.semi_yellow })

    -- Constants
    set(0, "Constant", { fg = colors.purple }) -- Top-level
    set(0, "String", { fg = colors.light_yellow })
    set(0, "Character", { fg = colors.light_yellow })
    set(0, "Number", { fg = colors.vibrant_magenta, bold = true })
    set(0, "Float", { fg = colors.vibrant_magenta, bold = true })
    set(0, "Boolean", { fg = colors.purple })

    set(0, "Identifier", { fg = colors.light_blue }) -- Any variable name
    set(0, "Function", { fg = colors.orange })       -- Function name

    -- Statements
    set(0, "Statement", { fg = colors.magenta }) -- Top-level
    set(0, "Keyword", { fg = colors.magenta })

    -- PreProcessor
    set(0, "PreProc", { fg = colors.magenta }) -- Top-level

    -- Special
    set(0, "Special", { fg = colors.light_magenta }) -- Top-level
    -- ^This^ also applies to the LazyVim main menu
    set(0, "SpecialChar", { fg = colors.magenta })

    -- Types
    set(0, "Type", { fg = colors.dark_blue, bold = true }) -- Top-level, but only sort of.
    -- Built-in types for some reason fall under the Treesitter @type.builtin

    -- Misc
    set(0, "Error", { fg = colors.light_white, bg = colors.red })
    set(0, "Todo", { fg = colors.light_white, bg = colors.orange })

    -- Diff
    set(0, "Added", { fg = colors.light_yellow })
    set(0, "Changed", { fg = colors.light_blue })
    set(0, "Removed", { fg = colors.light_red })


    -- Unknown type: TODO Messages
    set(0, "TodoBgTODO", { fg = colors.light_white, bg = colors.yellow })
    set(0, "TodoFgTODO", { fg = colors.yellow })
    set(0, "TodoSignTODO", { fg = colors.yellow })


    -- HIGHLIGHT GROUPS: Neovim
    set(0, "VertLine", { fg = colors.purple })    -- Doesn't seem to work
    set(0, "StatusLine", { fg = colors.light_orange })
    set(0, "LineNr", { fg = colors.light_black }) -- Doesn't seem to work
    set(0, "CursorLine", { bg = colors.light_black })
    set(0, "Visual", { bg = colors.gray })


    -- TREESITTER HIGHLIGHT GROUPS
    set(0, "@type.builtin", { fg = colors.dark_blue, bold = true })


    -- LSP HIGHLIGHT GROUPS
    set(0, "@lsp.type.parameter", { fg = colors.light_orange })
    set(0, "@lsp.type.variable", { fg = colors.light_blue })


    -- PLUGINS

    -- LAZYVIM
    -- Just for the expanded commit view
    -- set(0, "LazyCommit", { fg = colors.red })

    -- NOICECMDLINE
    set(0, "NoiceCmdlinePopupBorder", { fg = colors.light_magenta })
    set(0, "NoiceCmdlineIcon", { fg = colors.magenta })
    set(0, "NoiceCmdline", { fg = colors.red })

    -- NEOTREE
    set(0, "NeoTreeFloatBorder", { fg = colors.light_magenta })
    set(0, "NeoTreeTitleBar", { fg = colors.magenta })
    set(0, "NeoTreeNormal", { fg = colors.white })
end

return M
