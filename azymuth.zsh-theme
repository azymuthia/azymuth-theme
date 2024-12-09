# Define color variables
WHITE="%{$fg_bold[white]%}"
GREEN="%{$fg_bold[green]%}"
RED="%{$fg_bold[red]%}"
BLUE="%{$fg_bold[blue]%}"
CYAN="%{$fg_bold[cyan]%}"
MAGENTA="%{$fg_bold[magenta]%}"
YELLOW="%{$fg_bold[yellow]%}"
RESET="%{$reset_color%}"

# Conditional color based on username
if [[ $USER == "root" ]]; then
  HEADER_COLOR=$WHITE
elif [[ $USER == "bartosz" ]]; then
  HEADER_COLOR=$CYAN
else
  HEADER_COLOR=$BLUE
fi

# Git prompt settings
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="$RESET"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Ruby prompt settings
ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg_bold[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›$RESET"

# Main prompt
PROMPT='
${HEADER_COLOR}%M - %n@%M ${GREEN}%~${RESET}$(git_prompt_info) ⌚ ${RED}%*${RESET}
$ '

# Right prompt
RPROMPT='$(ruby_prompt_info)'
