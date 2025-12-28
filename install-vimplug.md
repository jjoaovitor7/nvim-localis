> https://github.com/junegunn/vim-plug

# Linux
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "call plug#begin()
Plug 'tpope/vim-sensible'
call plug#end()" > config/init.vim # (or ~/.config/nvim/init.vim)
```

# Windows
```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

Set-Content config/init.vim @"
call plug#begin()
Plug 'tpope/vim-sensible'
call plug#end()
"@

nvim --headless config/init.vim +"%s/\r//g" +"w ++ff=unix" +"qa"
```
