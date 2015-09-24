#PROMPT='$(git_prompt_info)$(svn_prompt_info)%(?,,%{${fg_bold[red]}%}[%?]%{$reset_color%} )%(?,%{$fg[yellow]%},%{$fg[red]%})%#%{$reset_color%} '
PROMPT='$(git_prompt_info)%(?,,%{${fg_bold[red]}%}[%?]%{$reset_color%} )%(?,%{$fg[yellow]%},%{$fg[red]%})%#%{$reset_color%} '
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
    #RPS1='%{$fg[green]%}%~$(git_prompt_info) %{$fg_bold[magenta]%}%m%{$reset_color%}'
    RPS1='%{$fg[green]%}%~ %{$fg_bold[magenta]%}%m%{$reset_color%}'
else
    #RPS1='%{$fg[green]%}%~$(git_prompt_info)'
    RPS1='%{$fg[green]%}%~'
fi


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ⚡%{$fg[yellow]%}"
