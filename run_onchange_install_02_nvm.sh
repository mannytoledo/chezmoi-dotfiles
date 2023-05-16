#!/usr/bin/env bash

# Install NVM
command -v nvm >/dev/null 2>&1 || \
    (echo 'Installing NVM' && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash)

