local M = {}

function M.load()
  local highlights = require("myerslabs.highlights").get()

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

return M
