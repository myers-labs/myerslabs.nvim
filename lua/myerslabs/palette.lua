local M = {}

local palettes = {
  dark = {
    bg = "#0f172a",
    fg = "#d9e0ee",
    accent = "#0fb5ba",
    dim = "#5e6c84",
    error = "#f38ba8",
    warning = "#f9e2af",
    info = "#89dceb",
    hint = "#a6e3a1",
    selection = "#1e293b",
    cursorline = "#1c2436",
    visual = "#334155",
    border = "#4c566a",
  },
  light = {
    bg = "#ffffff",
    fg = "#0f172a",
    accent = "#0fb5ba",
    dim = "#475569",
    error = "#dc2626",
    warning = "#d97706",
    info = "#0284c7",
    hint = "#059669",
    selection = "#dbeafe",
    cursorline = "#f8fafc",
    visual = "#bfdbfe",
    border = "#94a3b8",
  },
}

function M.get()
  return vim.o.background == "light" and palettes.light or palettes.dark
end

return M
