#!/usr/bin/env zsh

if [[ ! -f "${ZDOTDIR:-$HOME}/.zlogin" ]]; then
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
fi
