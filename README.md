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

