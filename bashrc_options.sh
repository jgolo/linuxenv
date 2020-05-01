#ALIASES
alias ls="ls -AF --color=auto"
alias ll="ls -lth"
alias vi="vim"
alias more="less"
alias screen="screen -L"
alias cp="cp -nvx"
export LESS="-F-I-j5-w-z-4";
shopt -s histappend

#To use egrep in find:
$efind() { find "$1" -regextype posix-egrep -regex "$2"; }

PS1="\e[0;36m\u\e[m@\e[0;36m\h \e[m\e[0;35m\W [\!]\e[m\\$"
#Last '\' haas to be escaped

    Note regarding the prompt:
    \u - username
    \h - hostname
    \W - CWD (Home abbrev. to ~ ) uses PROMPT_DIRTRIM variable in ver 4.0
    \w - Base of CWD (Home abbreviated to ~ )
    \! - History Number
    \$ - Show # for root, $ for all others

PROMPT_DIRTRIM=2

LESS enviroment:
    -F or --quit-if-one-screen
    -I or --IGNORE-CASE when searching
    -jn  Specifies a line on the screen where the "target" line is to be positioned
    -M LONG-PROMPT (% and line #)i.e.: more verbose status line
    -z-4  When jumping a screen overlap 4 lines with last
    -g or —hilite-search Highlights one search result at a time, not all
    -w   Temporarily  highlights  the  first  "new"  line after a forward movement
    -q Causes  moderately "quiet” operation (no bell)

Can be applied to ~/.bashrc or /etc/bashrc

to include time in prompt:
PS1="\e[0;36m\u\e[m@\e[0;36m\h \W\e[m \e[0;35m[\t] (\!)\e[m \\$"

export PROMPT_DIRTRIM=2


