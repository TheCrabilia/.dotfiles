#!/usr/bin/env zsh

# OS specific aliases

case ${OSTYPE} in
    linux*)
        (( ${+commands[apt]} )) && alias apt="sudo apt"
        (( ${+commands[yum]} )) && alias yum="sudo yum"
        (( ${+commands[dnf]} )) && alias dnf="sudo dnf"
        (( ${+commands[pacman]} )) && alias pacman="sudo pacman"
        (( ${+commands[systemctl]} )) && alias systemctl="sudo systemctl"
        (( ${+commands[ip]} )) && alias ip="ip --color=auto"
        (( ${+commands[grep]} )) && alias grep="grep --color=auto"
        ;;
    darwin*)
        if (( ${+commands[ggrep]} )); then
            alias grep="ggrep --color=auto"
            alias egrep="gegrep --color=auto"
            alias fgrep="gfgrep --color=auto"
        fi
        (( ${+commands[gxargs]} )) && alias xargs="gxargs"
        (( ${+commands[gfind]} )) && alias find="gfind"
        ;;
esac
