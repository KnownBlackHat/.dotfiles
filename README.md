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
sudo apt update -y && sudo apt install fontconfig tmux git -y && git clone https://github.com/KnownBlackHat/tmux-config.git ~/tmux-config && cd ~/tmux-config && mv dot_tmux ~/.tmux && mv .tmux.conf ~/.tmux.conf && tmux -u
