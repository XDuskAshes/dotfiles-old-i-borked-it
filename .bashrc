#
# ~/.bashrc
#

PS1='[ \w ] '
# [ ~ ]

alias cls="clear"
alias fetch="cls && pfetch"
alias fetchbig="cls && neofetch"
alias shutdown="systemctl shutdown"
alias reboot="systemctl reboot"
alias full-update="sudo pacman -Syu"
alias sync="sudo pacman -Sy"
alias lg="lazygit"
alias ls="ls --color=auto -ha"
alias grep="grep --color=auto"
alias ttyclock="tty-clock -t -b -B -C 5 -n -s -f %m-%d-%Y"
alias make-targz="tar -czvf"
alias extract-targz="tar -xzvf"
alias sh-execable="sudo chmod +x"

eval "$(zoxide init bash)" # For Zoxide. <https://github.com/ajeetdsouza/zoxide>
