local ret_status="%(?:%{$fg_bold[green]%}⚡:%{$fg_bold[red]%}⚡)"
PROMPT='%{$fg_bold[blue]%}⚗ %c%{$reset_color%} $(git_prompt_info)${ret_status}%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}⑃ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} 🖕"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%} 👌"

LSCOLORS="Exfxcxdxbxegedabagacad"
