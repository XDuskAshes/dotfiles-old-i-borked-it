#
# ~/.bashrc
#

# If not running interactively, don't do anything
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
