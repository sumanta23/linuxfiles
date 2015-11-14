#!/usr/local/env bash

export EDITOR=vim

#Set env variables
export JAVA_HOME=~/sw/jdk1.7.0_75
#export JAVA_HOME=~/sw/jdk1.9.0
export M2_HOME=~/sw/apache-maven-3.3.3
export ANT_HOME=~/sw/apache-ant-1.9.4
#export IDEA_HOME=~/sw/idea-IC-139.1117.1
export GRADLE_HOME=~/sw/gradle-2.3
export SUBLIME_HOME=~/sw/sublime_test_3
PATH=$JAVA_HOME/bin:$M2_HOME/bin:$ANT_HOME/bin:$GRADLE_HOME/bin:$SUBLIME_HOME:$PATH


# install nvm in path
if [ -f ~/.nvm/nvm.sh ]; then
    . ~/.nvm/nvm.sh
fi


# Set Alias Commands
alias arq='mvn clean install -Pjboss_managed_local | tee /tmp/log.txt'
alias junit='mvn clean install | tee /tmp/log.txt'
alias findtxt='grep -rnw . -e'

#battery Status
alias power='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | grep -oE "[0-9]{1,3}%"'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


#ctags generator
function createCtags(){
 ctags -R --languages=$1 --exclude=.git --exclude=logs --exclude=node_modules
}
alias ctag=createCtags


