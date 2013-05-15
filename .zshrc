export LANG=ja_JP.UTF-8

#enable complement
autoload -U compinit
compinit
#enable predicton
autoload predict-on
predict-on
#enable colors
autoload -U colors
colors

#ignore same commands
setopt hist_ignore_dups
#ignore when space entered
setopt hist_ignore_space
#prediction lineup-settings
setopt list_packed
#enable prediction automaticaly
setopt auto_menu
#do not beep sound
setopt nolistbeep
#use colors
setopt prompt_subst

#history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

#paths
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/share/npm/bin

#shortcuts to applications
alias firefox="open -a Firefox"
alias chrome="open -a Google\ Chrome"
alias chromedev="chrome --args --allow-file-access-from-files"
alias mvim="open -a MacVim"
alias finder="open -a Finder ."
alias eucssh="cocot -t UTF-8 -p EUC-JP -- ssh"
alias eucsftp="cocot -t UTF-8 -p EUC-JP -- sftp"

#prompt settings
PROMPT="%m:[%.]%(!.#.$) "
RPROMPT="[%~]"
SPROMPT="correct: %R -> %r ? "

#title settings
preexec() {
    mycmd=(${(s: :)${1}})
    echo -ne "\ek$(hostname|awk 'BEGIN{FS="."}{print $1}'):$mycmd[1]\e\\"
}

precmd() {
    echo -ne "\ek$(hostname|awk 'BEGIN{FS="."}{print $1}'):idle\e\\"
}
