# Neovim-from-scratch
This is my new neovim config, made from scratch with pure lua. This is not a stable config. **WIP!!**
If you want to use my config, you first need to install [packer.nvim](https://github.com/wbthomason/packer.nvim), then run this commands:  
  
**For Linux/OSX**
```shell
mv ~/.config/nvim ~/.config/nvim.bak
git clone https://github.com/ritchielrez/Neovim-from-scratch.git ~/.config/nvim 
```
**For Windows, run this in Powershell**
```powershell
mv ~/Appdata/Local/nvim ~/Appdata/Local/nvim.bak
git clone https://github.com/ritchielrez/Neovim-from-scratch.git ~/Appdata/Local/nvim
```
After you got my config downloaded into the right place, go to **~/.config/nvim/lua/plugins**(Linux/OSX), or **~/Appdata/Local/nvim**(Windows) 
from your shell, I recommend Powershell if you're using Windows. After you go to that folder, run this commands:
```shell
mv init.lua init1.lua
mv installer.lua init.lua
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```
