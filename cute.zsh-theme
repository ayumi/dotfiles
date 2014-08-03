if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi

PROMPT='%{$fg[$NCOLOR]%}%n%{$fg[faint]%}@%{$fg[cyan]%}%m\
%{$fg[white]%}:%{$fg[magenta]%}%~\
$(git_prompt_info) \
%{$fg[blue]%}%(!.#.%%)%{$reset_color%} '
RPROMPT='%{$fg[white]%}%* %{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}○%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"
