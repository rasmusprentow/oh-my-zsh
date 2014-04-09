
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> abondoa theme
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)$(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
=======
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)$(git_prompt_status)$(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
>>>>>>> more theme
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
=======
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info) $(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
RPROMPT='%{$fg[green]%}%~%{$reset_color%}'
=======
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)$(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
RPROMPT='%{$fg_bold[cyan]%}%~%{$reset_color%}'
>>>>>>> my theme and fixed svn fast info

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git( %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%} )%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

<<<<<<< HEAD
=======
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info) $(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
RPROMPT='%{$fg[green]%}%~%{$reset_color%}'
=======
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)$(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
RPROMPT='%{$fg_bold[cyan]%}%~%{$reset_color%}'
>>>>>>> my theme and fixed svn fast info

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git( %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%} )%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

<<<<<<< HEAD
>>>>>>> abondoa theme
=======

=======
>>>>>>> abondoa theme
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)$(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
=======
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)$(git_prompt_status)$(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
>>>>>>> more theme
=======

PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)$(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
>>>>>>> git more weird symbols added
RPROMPT='%{$fg_bold[cyan]%}%~%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git( %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%} )%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> abondoa theme
ZSH_THEME_SVN_PROMPT_PREFIX=$ZSH_THEME_GIT_PROMPT_PREFIX
ZSH_THEME_SVN_PROMPT_SUFFIX=$ZSH_THEME_GIT_PROMPT_SUFFIX
ZSH_THEME_SVN_PROMPT_DIRTY=$ZSH_THEME_GIT_PROMPT_DIRTY
ZSH_THEME_SVN_PROMPT_CLEAN=$ZSH_THEME_GIT_PROMPT_CLEAN
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> abondoa theme
=======
=======
>>>>>>> my theme and fixed svn fast info
=======
>>>>>>> my theme and fixed svn fast info
ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg_bold[blue]%}svn(%{$fg_bold[red]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_SVN_PROMPT_DIRTY="! "
ZSH_THEME_SVN_PROMPT_CLEAN=" "
ZSH_THEME_SVN_PROMPT_DELETIONS="D "
ZSH_THEME_SVN_PROMPT_MODIFICATIONS="M "
ZSH_THEME_SVN_PROMPT_ADDITIONS="A " 
ZSH_THEME_SVN_PROMPT_UNTRACKED="? "
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> my theme and fixed svn fast info
=======
>>>>>>> abondoa theme
=======
>>>>>>> my theme and fixed svn fast info
=======
>>>>>>> abondoa theme
=======
>>>>>>> my theme and fixed svn fast info
=======
ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg_bold[blue]%}svn( %{$fg_bold[red]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg_bold[blue]%} )%{$reset_color%} "
ZSH_THEME_SVN_PROMPT_DIRTY=$ZSH_THEME_GIT_PROMPT_UNMERGED
ZSH_THEME_SVN_PROMPT_CLEAN=$ZSH_THEME_GIT_PROMPT_CLEAN
ZSH_THEME_SVN_PROMPT_DELETIONS=$ZSH_THEME_GIT_PROMPT_DELETED
ZSH_THEME_SVN_PROMPT_MODIFICATIONS=$ZSH_THEME_GIT_PROMPT_MODIFIED
ZSH_THEME_SVN_PROMPT_ADDITIONS=$ZSH_THEME_GIT_PROMPT_ADDED
ZSH_THEME_SVN_PROMPT_UNTRACKED=$ZSH_THEME_GIT_PROMPT_UNTRACKED
ZSH_THEME_SVN_PROMPT_REPLACEMENTS=$ZSH_THEME_GIT_PROMPT_RENAMED
>>>>>>> git more weird symbols added
