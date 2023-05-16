#!/usr/bin/env bash

# Install Homebrew
command -v brew >/dev/null 2>&1 || \
  (NONINTERACTIVE=1 echo '🍺  Installing Homebrew' && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")

