local palette = require("myerslabs.palette").get()

return {
  normal = {
    a = { fg = palette.bg, bg = palette.accent, gui = "bold" },
    b = { fg = palette.fg, bg = palette.selection },
    c = { fg = palette.fg, bg = palette.bg },
  },
  insert = {
    a = { fg = palette.bg, bg = palette.info, gui = "bold" },
  },
  visual = {
    a = { fg = palette.bg, bg = palette.hint, gui = "bold" },
  },
  replace = {
    a = { fg = palette.bg, bg = palette.error, gui = "bold" },
  },
  inactive = {
    a = { fg = palette.dim, bg = palette.bg },
    b = { fg = palette.dim, bg = palette.bg },
    c = { fg = palette.dim, bg = palette.bg },
  },
}
