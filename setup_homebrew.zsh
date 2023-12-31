#!/usr/bin/env zsh

echo "\n<<<< Starting homebrew setup >>>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# TODO: Keep an eye out for a different '--no-quarantine' solution.
# Currently, you can't do 'brew bundle --no-quarantine' as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474

# Running installs inside Brewfile
# Remember use 'brew bundle dump --describe' from time to time to record new installs
brew bundle --verbose

