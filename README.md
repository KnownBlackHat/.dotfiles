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

```bash
mv /tmp/terminal-config/.tmux.conf ~/.tmux.conf
```

> Nvim init script installation

```bash
mkdir -p ~/.config/nvim && mv /tmp/terminal-config/init.vim  ~/.config/nvim/init.vim 
```

> Vim init script installation

```bash
mv /tmp/terminal-config/.vimrc ~/.vimrc
```
 
> To Install Everything above in one line syntaxx
```bash
git clone https://github.com/KnownBlackHat/terminal-config.git /tmp/terminal-config && mv /tmp/terminal-config/.zshrc ~/.zshrc && mv /tmp/terminal-config/.tmux.conf ~/.tmux.conf && mkdir -p ~/.config/nvim && mv /tmp/terminal-config/init.vim  ~/.config/nvim/init.vim && mv /tmp/terminal-config/.vimrc ~/.vimrc
```
