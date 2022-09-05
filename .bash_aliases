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
alias pp-json='jq .'
alias file='pcmanfm . &'

alias kill-discord="ps -aux | grep '[d]iscord' | awk '{print \$2}' | xargs kill"
alias virt="sudo systemctl start libvirtd.service && sudo systemctl status libvirtd.service"

update ()
{
  if [ "$1" = "-f" ] ; then
    echo "forcing update..."
    sudo pacman -Syyu
  else
    sudo pacman -Syu
  fi
}

clean ()
{
  if [ "$1" = "check" ] ; then
    echo "the following packages are available to clean..."
    sudo pacman -Qdtq
  else
    sudo pacman -Qdtq | sudo pacman -Rs -
  fi
}

theme ()
{
  if [ "$1" = "gtk" ] ; then
   lxappearance &
  elif [ "$1" = "qt" ] ; then
   qt5ct &
  else
   lxappearance &
   qt5ct &
  fi
}
