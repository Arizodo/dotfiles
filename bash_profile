#Error 11:Segfault

#---BASH.RC---#
#Author: Dylan Warps
#File: ~/.bash_profile
#Date:11-4-17
#Last revised:19-4-17

#PATH, with added ~/.bin for self-created  programs and utilities.
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/dylan/.bin/"

#Work folders' shortcuts
alias wf="cd ~/Documents/Programming; clear; ls -lrt"
alias wfcpp="cd ~/Documents/Programming/C++; clear; ls -lrt"
alias wfpy="cd ~/Documents/Programming/Python; clear; ls -lrt"
alias rwf="cd /Volumes/Data/Documents/Programming; clear ls -ltr"
alias rwfcpp="cd /Volumes/Data/Documents/Programming/C++; clear ls -ltr"
alias rwfpy="cd /Volumes/Data/Documents/Programming/Python; clear ls -ltr"
alias wfdb="cd /Volumes/Data/Dropbox/Programming;"

#General shortcuts.
alias ebp="vim ~/.bash_profile"
alias dropb="cd /Volumes/Data/Dropbox"

#Command Aliasses
alias c="clear"
alias l="ls -latr"
alias t="tmux"
alias q="exit"
alias u="sudo umount /dev/disk1s*"
alias py3="python3"
alias s="open -a safari"
alias wifi="networksetup -setairportpower en1" #on|off

#Default Command Overrides
alias ls="ls -F"

uprompt="\e[97m\]\e[30;107m\] \w/\e[49;97m\]\e[39;49m\n        ┗━╸\]"

#Bash prompt info variables
info=''
info_normal="\u"
info_onError="Error!"
info_onDump="Program killed, core dumped!"
info_onSegFault="Segmentation Fault, core dumped!"
info_onNonExecutable="Cannot execute"
info_onCommandNotFound="Command not found!"
info_onInterrupt="Program interrupted by user!"

#Bash prompt color info
color=''
color_normal='\e[48;5;63m\]'
color_onError='\e[48;5;160m\]'
color_onNonExecutable="\e[48;5;250m\]"
color_onCommandNotFound='\e[48;5;184m\]'
color_onInterrupt='\e[48;5;178m\]'
function setStart() {
	color="$color_normal"
	info="$info_normal"
}

#Error code 2. Seems to be related to makefile problems.

function setStatusPrompt() {
	err="$?"
	if [ "$err" == "0" ]; then
		color="$color_normal"
		info="$info_normal"
	elif [ "$err" == "1" ]; then
		color="$color_onError"
		info="$info_onError"
	elif [ "$err" == "3" ]; then
		color="$color_onError"
		info="$info_onDump"
	elif [ "$err" == "11" ]; then
		color="$color_onError"
		info="$info_onSegFault"
	elif [ "$err" == "126" ]; then
		color="$color_onNonExecutable"
		info="$info_onNonExecutable"
	elif [ "$err" == "127" ]; then
		color="$color_onCommandNotFound"
		info="$info_onCommandNotFound"
	elif [ "$err" == "130" ]; then
		color="$color_onInterrupt"
		info="$info_onInterrupt"
	fi
	export PS1="$color $info $uprompt"
}

PROMPT_COMMAND='setStatusPrompt'

export PS1="$color $info $uprompt"

#commands to be executed upon opening of a terminal.
#blank
