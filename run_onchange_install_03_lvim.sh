#!/usr/bin/env bash

# Install NVM
command -v lvim >/dev/null 2>&1 || \
    (echo 'Installing Lunarvim' && LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh))
