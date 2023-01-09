# My Terminal Configs

## Clone Repo in `/tmp` dir
```bash
git clone https://github.com/KnownBlackHat/terminal-config.git /tmp/terminal-config
```
> ZSH Shell Config installations
```bash
mv /tmp/terminal-config/.zshrc ~/.zshrc
```

> Install Tmux Red Theme 
> ###### **NOTE: Use `prefix + shift + I` for module installation**
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm; mv /tmp/terminal-config/.tmux.conf ~/.tmux.conf
```

> Nvim plugin Manager

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
> Nvim init script installation

```bash
mkdir -p ~/.config/nvim && mv /tmp/terminal-config/init.vim  ~/.config/nvim/init.vim 
```

> Vim init script installation

```bash
mv /tmp/terminal-config/.vimrc ~/.vimrc
```
 
## To Install Everything above in one line syntaxx
```bash
git clone https://github.com/KnownBlackHat/terminal-config.git /tmp/terminal-config && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  && mv /tmp/terminal-config/.zshrc ~/.zshrc && mv /tmp/terminal-config/.tmux.conf ~/.tmux.conf && mkdir -p ~/.config/nvim && mv /tmp/terminal-config/init.vim  ~/.config/nvim/init.vim && mv /tmp/terminal-config/.vimrc ~/.vimrc && sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
