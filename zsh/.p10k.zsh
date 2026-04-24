# Resolve the real file path so this works when deployed through Stow.
typeset -g __p10k_file=${${(%):-%N}:A}
source "${__p10k_file:h}/powerlevel10k/config/p10k-lean.zsh"

# Keep the prompt compact and focused on what changes per project.
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir
  vcs
  newline
  prompt_char
)

typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  command_execution_time
  background_jobs
  nvm
  kubecontext
  aws
  time
  newline
)

typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
typeset -g POWERLEVEL9K_TIME_FOREGROUND=244

# Only show cloud/tooling context when you're likely to need it.
typeset -g POWERLEVEL9K_AWS_SHOW_ON_COMMAND='aws|sam|terraform|terragrunt'
typeset -g POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|flux|k9s'

unset __p10k_file
