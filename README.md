# My Terminal Configs

## Clone Repo in `/tmp` dir
```bash
git clone https://github.com/KnownBlackHat/terminal-config.git /tmp/terminal-config
```
## ZSH Shell Config installations
```bash
mv /tmp/terminal-config/.zshrc ~/.zshrc
```

## Install Tmux Red Theme 
> Use `prefix + shift + I` for module installation, after executing following command
```bash
mv /tmp/terminal-config/.tmux.conf ~/.tmux.conf
```

## Nvim 9 Installation
> After executing following command, use `PackerSync` nvim command after sourcing packer.lua
```bash
rm -rf ~/.config/nvim; git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim && mkdir -p ~/.config/nvim && mv /tmp/terminal-config/nvim_9/* ~/.config/nvim
```

## Nvim Stable Installation
> After executing following command, use `PlugInstall` nvim command
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && mkdir -p ~/.config/nvim && mv /tmp/terminal-config/init.vim  ~/.config/nvim/init.vim 
```
