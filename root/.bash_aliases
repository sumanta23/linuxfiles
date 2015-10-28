# install nvm in path
if [ -f ~/.nvm/nvm.sh ]; then
    . ~/.nvm/nvm.sh
fi


export EDITOR=vim

# Set Alias Commands
alias arq='mvn clean install -Pjboss_managed_local | tee /tmp/log.txt'
alias junit='mvn clean install | tee /tmp/log.txt'

#battery Status
alias power='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | grep -oE "[0-9]{1,3}%"'
