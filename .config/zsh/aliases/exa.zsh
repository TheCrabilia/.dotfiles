#!/usr/bin/env zsh

if (( ${+commands[exa]} )); then
    alias ls="exa"
    alias la="exa --long --all --git --group"
    alias lt="exa --long --git --group -snew"
    alias ll="exa --long --git --group"
else
    alias ls="ls --color=auto"
    alias la="ls -la"
    alias lt="ls -lt"
    alias ll="ls -l"
    alias l.="ls -ld .?*"
fi
