if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
#rt PS1="\u@\h:\w $"
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"

##
# Your previous /Users/jinfenglin/.bash_profile file was backed up as /Users/jinfenglin/.bash_profile.macports-saved_2015-02-02_at_01:03:13
##

# MacPorts Installer addition on 2015-02-02_at_01:03:13: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
#
export PG_USER=jinfenglin
export PG_PASS=a1992
export CLASSPATH="/Users/jinfenglin/Documents/weka/weka-3-7-12/weka.jar:$CLASSPATH"
#Twist bash prompt
# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\u@\h:\[\033[03;34m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
#modify ls
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

