#!/usr/bin/env zsh

if (( ${+commands[helm]} )); then
    alias h="helm"
    alias hi="helm install"
    alias hd="helm delete"
    alias hl="helm ls"
    alias hg="helm get"
fi
