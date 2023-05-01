#!/bin/bash
# Este é um script de shell para identificar o status do Git em uma pasta

# Função para obter o status do git
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Função para definir a cor da label baseado no status do git
function set_git_prompt_color() {
  local git_status=$(git status --porcelain 2> /dev/null)
  if [[ -n "$git_status" ]]; then
    # arquivos não comitados
    PROMPT="%F{red}$(git_prompt_info)%f"
  else
    local git_status=$(git status --porcelain=v1 2> /dev/null)
    if [[ -n "$git_status" ]]; then
      # arquivos adicionados
      PROMPT="%F{green}$(git_prompt_info)%f"
    else
      local git_status=$(git status -sb 2> /dev/null)
      if [[ $git_status =~ \[ahead ]]; then
        # branch com commits a serem enviados
        PROMPT="%F{blue}$(git_prompt_info)%f"
      else
        # arquivos comitados
        PROMPT="%F{yellow}$(git_prompt_info)%f"
      fi
    fi
  fi
}

# Função para exibir o status do git e da pasta atual no prompt
function prompt_func() {
  set_git_prompt_color
  PROMPT="$PROMPT %F{cyan}%1~%f %# "
}

# Configuração do tema do prompt
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
PROMPT='%F{cyan}%1~%f %# '

# Executa a função prompt_func a cada comando executado
precmd() { prompt_func; }

