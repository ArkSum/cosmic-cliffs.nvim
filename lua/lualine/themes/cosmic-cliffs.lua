local colors = {
  fg = "#ecdbd4",
  bg = "#1c1431",
  normal = "#6f6098",
  insert = "#c06054",
  visual = "#c4a2e6",
  replace = "#3183ff",
  command = "#90e4e4",
  inactive = "#4c3f70"
}


return {
  normal = {
    a = { fg = colors.fg, bg = colors.normal },
    b = { fg = colors.fg, bg = colors.inactive },
    c = { fg = colors.fg, bg = colors.bg }
  },
  insert = {
    a = { fg = colors.fg, bg = colors.insert },
    b = { fg = colors.fg, bg = colors.inactive },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.visual },
    b = { fg = colors.fg, bg = colors.inactive },
  },
  replace = {
    a = { fg = colors.fg, bg = colors.replace },
    b = { fg = colors.fg, bg = colors.inactive },
  },
  command = {
    a = { fg = colors.bg, bg = colors.command },
    b = { fg = colors.fg, bg = colors.inactive },
  },
  inactive = {
    a = { fg = colors.fg, bg = colors.inactive },
    b = { fg = colors.fg, bg = colors.fg },
    c = { fg = colors.fg, bg = colors.bg }
  },
}
