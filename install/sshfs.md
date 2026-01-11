> https://github.com/uhs-robert/sshfs.nvim

# Linux
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
    "uhs-robert/sshfs.nvim",
    opts = {
      ssh_configs = {
        "~/.ssh/config",
        "/etc/ssh/ssh_config",
      },
    }
  },
  { import = "plugins" },
}, lazy_config)
-- ...
-- :Lazy install
```
