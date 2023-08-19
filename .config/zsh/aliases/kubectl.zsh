#!/usr/bin/env zsh

if (( ${+commands[kubectl]} )); then
    alias k="kubectl"
    alias ka="kubectl apply"
    alias kd="kubectl delete"
    alias kl="kubectl logs"
    alias kg="kubectl get"
fi

(( ${+commands[kubens]} )) && alias kns="kubens"
(( ${+commands[kubectx]} )) && alias kctx="kubectx"
