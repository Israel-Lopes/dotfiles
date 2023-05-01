# DOTFILES

## Dependencias
 - tmux
 - zsh
 - ohmyzs
 - nvim

OBS: Todos os arquivos de configuração devem fica dentro da pasta /dotfiles

## Configuração

Para configurar o dotfiles, basta executar os comandos abaixo.
Lenbrando que os direotrios para criar o link dos arquivos deve existir, caso contrario
avera erro.

O comando ``ln -s`` cria um link simbolico do arquivo, dessa forma e possivel organizar arquivos
de configuracão em outros diretorios

```
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
```

## Thema de cores do terminal

Para carregar o themas de cores do theminal basta fazer na linha de comando, ou por
direto no ``.zshrc`` para ser carregado automaticamente.

``dconf load /org/gnome/terminal/legacy/profiles:/ < ~/dotfiles/terminal-config/profiles_backup.txt``

Com isso ele ira carregar o esquema de cores

Caso você queria exporta suas configuracoes basta fazer:

``dconf dump /org/gnome/terminal/legacy/profiles:/ > profiles_backup.txt``
