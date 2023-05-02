#!/bin/bash

# Obtém o histórico do git com informações sobre as branchs e formatação personalizada
git log --graph --abbrev-commit --decorate --format=format:'%C(auto)%h%d %s %C(black)%C(bold)%cr' --color |
# Substitui os caracteres ASCII usados para o fluxo das branchs pelos equivalentes em Unicode
sed -e 's/|/│/g' -e 's/\\-/--/g' -e 's/*/●/g' -e 's/\\/╲/g' -e 's/_/─/g' -e 's/-/─/g' -e 's/>/▶/g' -e 's/</◀/g'
