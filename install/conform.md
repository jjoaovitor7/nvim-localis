> https://github.com/stevearc/conform.nvim

### NvChad
```lua
-- ...
-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },
  {
    "stevearc/conform.nvim",
    opts = {},
  }, 
  { import = "plugins" },
}, lazy_config)
-- ...
require("conform").setup {
  formatters_by_ft = {
  },
  format_on_save = {
    timeout_ms = 512,
    lsp_format = "never",
  },
}
-- ...
-- :Lazy install
```
