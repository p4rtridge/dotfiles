# fox.zsh-theme

PINK="%F{#eb6f92}"

PROMPT='%{$PINK%}┌[%{$fg_bold[white]%}%n%{$reset_color%}%{$PINK%}@%{$fg_bold[white]%}%M%{$reset_color%}%{$PINK%}]%{$fg[white]%}-%{$PINK%}(%{$fg_bold[white]%}%~%{$reset_color%}%{$PINK%})$(git_prompt_info)
└> % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="-[%{$reset_color%}%{$fg[white]%}%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$PINK%}]-"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$PINK%}✔%{$reset_color%}"
