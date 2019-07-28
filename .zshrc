###############################################################################
#               _                
#     ____ ___ | |__   _ __  ___ 
#    |_  // __|| '_ \ | '__|/ __|
#  _  / / \__ \| | | || |  | (__ 
# (_)/___||___/|_| |_||_|   \___|
#                                
###############################################################################
# Oh My Zsh {{{

ZSH=$HOME/.oh-my-zsh

# source aliases from ~/.zsh_aliases
source ~/.zsh_aliases

# source functions from ~/.zsh_functions
source ~/.zsh_functions

# use sane history stamps
HIST_STAMPS="yyyy-mm-dd"

# use oh-my-zsh and some of its plugins
plugins=(git)
source $ZSH/oh-my-zsh.sh

# don't AUTO_CD, 'cuz it's lame
unsetopt AUTO_CD

# prompt configuration mostly borrowed from oh-my-zsh geoffgarside theme
PROMPT='[%*] %{$fg[cyan]%}%n@%m%{$reset_color%}:%{$fg[green]%}%~%{$reset_color%}$(git_prompt_info) %(!.#.$) '
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

# }}}

# Environment Variables {{{
#
# # all your binaries are belong to my PATH
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
#
# # set preferred EDITOR to vim
export EDITOR='vim'
#
# # }}}

#
## nvm source
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export GPG_TTY=`tty`
export PIP_REQUIRE_VIRTUALENV=true

# Virtualenv wrapper
export WORKON_HOME="$HOME/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /home/jtea/.local/bin/virtualenvwrapper.sh

PATH="/home/jtea/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jtea/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jtea/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jtea/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jtea/perl5"; export PERL_MM_OPT;
