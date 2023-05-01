# DOTFILES

## Dependencias
 - tmux
 - zsh
 - ohmyzs
 - nvim

OBS: Todos os arquivos de configuração devem fica dentro da pasta /dotfiles

## Configuração

Para configurar os dotfiles, bastar por script dentro de .bashrc

```
# Configuracao dos imports para centralizar configuracoes
export XDG_CONFIG_HOME="$HOME/dotfiles/nvim/init.vim"
export TMUX_CONFIG="$HOME/dotfiles/tmux/tmux.conf"
```

Depois dentro do ~/.zshrc pode apagar todo conteudo do arquivo. Agora basta chamar
o arquivo ~/dotfiles/zsh/.zshrc dentro de ~/.zshrc dessa forma:

``source ~/dotfiles/zsh/.zshrc``

Depois de todas configuracoes, todos os arquivos podem ser confurados em uma mesma pasta,
facilitando assim a manutenção e controler das configuracoes.
