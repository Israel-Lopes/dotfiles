# color autput
export CLICOLOR=1

# Flyctl
export FLYCTL_INSTALL="/home/oem/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#MVN Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
#MVN Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Muted sound on/off
alias sound_off="amixer -D pulse sset Master mute"
alias sound_on="amixer -D pulse sset Master unmute"
# Fuzyc
alias pf="fzf --preview='less {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"
# Machine 1
alias viewmachine1="ssh -YC slave-machine-1@192.168.0.13 'x2x -east -to :0'"
alias entermachine1="ssh -X slave-machine-1@192.168.0.13"
alias sonmachine1="ssh slave-machine-1@192.168.0.13 'arecord -f S16_LE -r 36000' | aplay"
# Limpa tela
alias cls="clear"

# Desativa mensagem de confimação para fechar o terminal
gsettings set org.gnome.Terminal.Legacy.Settings confirm-close false



export TMUX_CONFIG="$HOME/dotfiles/tmux/tmux.conf"

if [[ -z "${TMUX}" ]]; then
    tmux attach-session -t default || tmux new-session -s default
fi

