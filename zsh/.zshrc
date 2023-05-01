# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Carrega o esquema de cores do termianl
dconf load /org/gnome/terminal/legacy/profiles:/ < ~/dotfiles/terminal-config/profiles_backup.txt

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/dotfiles/zsh/.p10k.zsh ]] || source ~/dotfiles/zsh/.p10k.zsh

#if [[ -z "${TMUX}" ]]; then
#    tmux attach-session -t default || tmux new-session -s default
#fi
