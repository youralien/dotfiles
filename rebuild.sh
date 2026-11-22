#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
ln -sfn "$DIR" ~/.dotfiles
# Absolute path: sudo's secure PATH doesn't include nix-darwin's bin dir.
exec sudo /run/current-system/sw/bin/darwin-rebuild switch --flake ~/.dotfiles#mac
