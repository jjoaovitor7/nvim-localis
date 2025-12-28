# Linux
```sh
alias nvimstime='nvim --startuptime "startup-nvim-$(date +%Y-%m-%d_%H-%M-%S).log"'
```

# Windows
```powershell
function nvimstime {
  nvim --startuptime "startup-nvim-$(Get-Date -Format 'yyyy-MM-dd_HH-mm-ss').log"
}
```

