describe("myerslabs", function()
  local myerslabs

  before_each(function()
    -- Reset any cached modules
    package.loaded["myerslabs"] = nil
    package.loaded["myerslabs.palette"] = nil
    package.loaded["myerslabs.highlights"] = nil
    
    myerslabs = require("myerslabs")
  end)

  it("can be required", function()
    assert.is_not_nil(myerslabs)
  end)

  it("has a load function", function()
    assert.is_function(myerslabs.load)
  end)

  describe("palette", function()
    local palette

    before_each(function()
      palette = require("myerslabs.palette")
    end)

    it("has get function", function()
      assert.is_function(palette.get)
    end)

    it("returns colors for dark mode", function()
      vim.o.background = "dark"
      local colors = palette.get()
      
      assert.is_string(colors.bg)
      assert.is_string(colors.fg)
      assert.is_string(colors.accent)
      assert.equals("#0fb5ba", colors.accent)
    end)

    it("returns colors for light mode", function()
      vim.o.background = "light"
      local colors = palette.get()
      
      assert.is_string(colors.bg)
      assert.is_string(colors.fg)
      assert.is_string(colors.accent)
      assert.equals("#0fb5ba", colors.accent)
    end)

    it("returns different backgrounds for light/dark", function()
      vim.o.background = "dark"
      local dark_colors = palette.get()
      
      vim.o.background = "light"
      local light_colors = palette.get()
      
      assert.is_not_equal(dark_colors.bg, light_colors.bg)
      assert.is_not_equal(dark_colors.fg, light_colors.fg)
    end)
  end)

  describe("highlights", function()
    local highlights_module
    local highlights

    before_each(function()
      highlights_module = require("myerslabs.highlights")
      highlights = highlights_module.get()
    end)

    it("module has get function", function()
      assert.is_function(highlights_module.get)
    end)

    it("contains highlight groups", function()
      assert.is_table(highlights)
      assert.is_not_nil(highlights.Normal)
      assert.is_not_nil(highlights.CursorLine)
    end)

    it("Normal group has fg and bg", function()
      local normal = highlights.Normal
      assert.is_string(normal.fg)
      assert.is_string(normal.bg)
    end)

    it("contains LSP diagnostic highlights", function()
      assert.is_not_nil(highlights.DiagnosticError)
      assert.is_not_nil(highlights.DiagnosticWarn)
      assert.is_not_nil(highlights.DiagnosticInfo)
      assert.is_not_nil(highlights.DiagnosticHint)
    end)

    it("contains Treesitter highlights", function()
      assert.is_not_nil(highlights["@variable"])
      assert.is_not_nil(highlights["@constant"])
      assert.is_not_nil(highlights["@keyword"])
    end)
  end)
end)