# Bash config file

# Easy latex compilation
tk() {
    latexmk -bibtex-cond -pdf -quiet "$1"
    latexmk -c -quiet
    }
export -f tk

alias lock="xflock4"
alias config='/usr/bin/git --git-dir=/home/benbel/.cfg/ --work-tree=/home/benbel'

PATH=/home/benbel/.local/bin:$PATH
VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR

# Colours

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

