# 🎨 myerslabs.nvim

A carefully crafted Neovim colorscheme inspired by the MyersLabs brand guide.

## ✨ Features

- 🌓 **Dual Modes**: Seamless light and dark theme support
- 🎯 **Brand Consistent**: MyersLabs teal accent (#0fb5ba) throughout
- 🔍 **LSP Ready**: Full diagnostic and semantic highlighting
- 🌳 **Treesitter**: Rich syntax highlighting support  
- 🔌 **Plugin Integration**: Support for popular plugins
- 💻 **Developer Friendly**: Optimized for JetBrains Mono Nerd Font
- 🚀 **Performance**: Lightweight and fast loading

## 📦 Installation

### lazy.nvim
```lua
{
  "myerslabs/myerslabs.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = "dark" -- or "light"
    vim.cmd.colorscheme("myerslabs")
  end,
}
```

### packer.nvim
```lua
use {
  "myerslabs/myerslabs.nvim",
  config = function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("myerslabs")
  end
}
```

### vim-plug
```vim
Plug 'myerslabs/myerslabs.nvim'
```

## 🚀 Usage

```lua
-- Enable true color support
vim.o.termguicolors = true

-- Set background (optional - defaults to dark)
vim.o.background = "dark" -- or "light"

-- Apply colorscheme
vim.cmd.colorscheme("myerslabs")
```

## 🎯 Supported Plugins

- **LSP**: Native Neovim LSP with semantic highlighting
- **Treesitter**: Enhanced syntax highlighting
- **Telescope**: Fuzzy finder styling
- **GitSigns**: Git change indicators
- **nvim-cmp**: Completion menu theming
- **WhichKey**: Keybind helper styling
- **Lualine**: Matching statusline theme

## 🎨 Color Palette

### Dark Mode
- **Background**: `#0f172a` (Slate 900)
- **Foreground**: `#d9e0ee` (Light gray)
- **Accent**: `#0fb5ba` (MyersLabs teal)

### Light Mode  
- **Background**: `#ffffff` (Pure white)
- **Foreground**: `#0f172a` (Slate 900)
- **Accent**: `#0fb5ba` (MyersLabs teal)

## 🔧 Development

```bash
# Install dependencies
make install

# Run tests
make test

# Lint code
make lint

# Format code
make format

# Run all checks
make check
```

## 📝 Requirements

- Neovim >= 0.8.0
- True color terminal support

## 🤝 Contributing

Contributions are welcome! Please check out the [issues](https://github.com/myerslabs/myerslabs.nvim/issues) or submit a pull request.

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.