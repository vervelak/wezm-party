PROMPT='%(?,,%{${fg_bold[red]}%}[%?]%{$reset_color%} )%(?,%{$fg[green]%},%{$fg[red]%})%#%{$reset_color%} '
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
    RPS1='%{$fg[white]%}%~$(git_prompt_info) %{$fg_bold[blue]%}%m%{$reset_color%}'
else
    RPS1='%{$fg[white]%}%~$(git_prompt_info)'
fi

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ⚡%{$fg[yellow]%}"