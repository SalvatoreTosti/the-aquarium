#Rename to .bash_profile and place in User directory to set as main profile.

export PATH=/usr/local/bin:$PATH

alias TextMate='open -a TextMate '					#open up a document in textmate
mcd () { mkdir -p "$1" && cd "$1"; }				#make directory and jump into it
alias c='clear'  									#c is now clear, for quicker typing
alias grip='sh /Users/Tosti/grip/grip.sh'
alias cclear='clear ; clear'	#my attempt to double clear screen
alias rm='rm -i'

#git aliases
alias gs='git status'
alias gcm='git commit -m'
