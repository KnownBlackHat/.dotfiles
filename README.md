> Rename files
```bash
mv ./dot_tmux ~/.tmux
```
> Launch Tmux
```bash
tmux -u
```
> One liner
```bash
sudo apt install fontconfig tmux git -y && git clone https://github.com/KnownBlackHat/tmux-config.git ~ &&  mv ~/dot_tmux ~/.tmux && tmux -u
