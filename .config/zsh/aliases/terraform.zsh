#!/usr/bin/env zsh

if (( ${+commands[terraform]} )); then
    alias tf="terraform"
    alias tfa="terraform apply"
    alias tfd="terraform destroy"
fi

if (( ${+commands[terragrunt]} )); then
    alias tg="terragrunt"
    alias tga="terragrunt apply"
    alias tgd="terragrunt destroy"
fi
