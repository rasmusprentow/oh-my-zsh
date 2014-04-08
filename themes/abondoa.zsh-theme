

PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)$(git_prompt_status)$(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
RPROMPT='%{$fg_bold[cyan]%}%~%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git( %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%} )%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭ "

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg_bold[blue]%}svn(%{$fg_bold[red]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_SVN_PROMPT_DIRTY="! "
ZSH_THEME_SVN_PROMPT_CLEAN=" "
ZSH_THEME_SVN_PROMPT_DELETIONS="D "
ZSH_THEME_SVN_PROMPT_MODIFICATIONS="M "
ZSH_THEME_SVN_PROMPT_ADDITIONS="A " 
ZSH_THEME_SVN_PROMPT_UNTRACKED="? "
