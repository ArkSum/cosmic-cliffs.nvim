local colors = require("cosmic-cliffs.theme-colors")

return {
  normal = {
    a = { fg = colors.normal, bg = colors.normal_mode },
    b = { fg = colors.normal, bg = colors.inactive_mode },
    c = { fg = colors.normal, bg = colors.ui_1 }
  },
  insert = {
    a = { fg = colors.normal, bg = colors.insert_mode },
    b = { fg = colors.normal, bg = colors.inactive_mode },
  },
  visual = {
    a = { fg = colors.ui_1, bg = colors.visual_mode },
    b = { fg = colors.normal, bg = colors.inactive_mode },
  },
  replace = {
    a = { fg = colors.normal, bg = colors.replace_mode },
    b = { fg = colors.normal, bg = colors.inactive_mode },
  },
  command = {
    a = { fg = colors.ui_1, bg = colors.command_mode },
    b = { fg = colors.normal, bg = colors.inactive_mode },
  },
  inactive = {
    a = { fg = colors.normal, bg = colors.inactive_mode },
    b = { fg = colors.normal, bg = colors.ui_3 },
    c = { fg = colors.normal, bg = colors.ui_1 }
  },
}
