#!/bin/bash

# Verifica se a mensagem do commit foi fornecida como argumento
if [ -z "$1" ]
  then
    echo "Por favor, forneça uma mensagem de commit como argumento"
    exit 1
fi

# Adiciona todos os arquivos ao staging area
git add .

# Faz o commit das alterações com a mensagem fornecida como argumento
git commit -m "$1"

# Faz o push das alterações para o repositório remoto
git push

# Para setar alias no git
# Nao esquecer de fazer: chmod +x git-commit-push.sh
# alias git gcp "mensagem do commit"
# git config --global alias.gcp '!~/dotfiles/git/git-commit-push.sh'

