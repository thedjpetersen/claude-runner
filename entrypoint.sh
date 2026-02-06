#!/bin/bash
set -e

HOME_DIR="/home/claude"

# First-run: copy skeleton dotfiles if .bashrc doesn't exist
if [ ! -f "$HOME_DIR/.bashrc" ]; then
    echo "First run detected - copying skeleton dotfiles..."
    cp -rn /etc/skel.d/. "$HOME_DIR/" 2>/dev/null || true
fi

# Ensure workspace directory exists
mkdir -p "$HOME_DIR/workspace"

# Set git defaults if not already configured
if ! git config --global user.name > /dev/null 2>&1; then
    git config --global user.name "Claude Runner"
    git config --global user.email "claude@frodojo.com"
fi

# Start tmux server with a default session
tmux new-session -d -s main 2>/dev/null || true

echo "Claude runner ready. tmux session 'main' started."

# Keep container alive with clean signal handling
exec sleep infinity
