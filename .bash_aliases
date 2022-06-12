# Alias definitions.
# In order for this to work, the following must be in the .bashrc ...
#
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi 

alias ls='ls -lah --color=always'
alias shutdown='sudo shutdown'
alias restart='sudo reboot'

alias screenshot='flameshot gui'

alias update='sudo pacman -Syu'
alias force-update='sudo pacman -Syyu'
alias check-clean="sudo pacman -Qdtq"
alias clean="sudo pacman -Qdtq | sudo pacman -Rs -"

alias kill-discord="ps -aux | grep '[d]iscord' | awk '{print \$2}' | xargs kill"
alias virt="sudo systemctl start libvirtd.service && sudo systemctl status libvirtd.service"
