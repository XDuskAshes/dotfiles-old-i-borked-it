#
# ~/.bashrc
#

PS1='[ \w ] '
# [ ~ ]

alias cls="clear"
alias fetch="cls && fastfetch"
alias full-update="sudo xbps-install -Su && xcheckrestart"
alias ls="ls --color=auto -hsa"
alias grep="grep --color=auto"
alias make-targz="tar -czvf"
alias extract-targz="tar -xzvf"
alias sh-execable="sudo chmod +x"
