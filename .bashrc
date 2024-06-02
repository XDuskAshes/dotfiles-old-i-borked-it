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
alias ls="ls --color=auto -hsa"
alias grep="grep --color=auto"
alias ttyclock="tty-clock -tbB -C 5 -nsf %m-%d-%Y"
alias make-targz="tar -czvf"
alias extract-targz="tar -xzvf"
alias sh-execable="sudo chmod +x"
alias vim="nvim" # I like nvim a lot.
alias code-root='sudo code --no-sandbox'

eval "$(zoxide init bash)" # For Zoxide. <https://github.com/ajeetdsouza/zoxide>
