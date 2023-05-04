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
ln -s ~/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
```

## Customização do zshrc com powerlevel10k

Caso nao tenha instalado em sua maquina, basta baixar e seguir a documentação abaixo.

![site_powerlevel10k](https://github.com/romkatv/powerlevel10k.git)

Essa configuração tambem e criando um link simbolico dela com nome ``.p10k.zsh``.

## Thema de cores do terminal

Para carregar o themas de cores do theminal basta fazer na linha de comando, ou por
direto no ``.zshrc`` para ser carregado automaticamente.

``dconf load /org/gnome/terminal/legacy/profiles:/ < ~/dotfiles/terminal-config/profiles_backup.txt``

Com isso ele ira carregar o esquema de cores

Caso você queria exporta suas configuracoes basta fazer:

``dconf dump /org/gnome/terminal/legacy/profiles:/ > profiles_backup.txt``

## Configurando git  GCP

O git gcp e uma abreviação de git add, commit e push. Ele ja automatiza a tarefa de
    subir alteçoes do codigo.
Para configuralo basta fazer setar em git config a seguinte alias:

´´``````` git config --global alias.gcp '!~/dotfiles/git/git-commit-push.sh'´´
