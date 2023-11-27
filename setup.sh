#!/usr/bin/env zsh

# Check if stow is installed
if ! command -v stow2 &> /dev/null
then
    echo -n 'stow could not be found. Would you like to install it? [y/n]: '
    read selection
    case "$selection" in
        [yY])
            echo -e "Installing stow."
            brew install stow
            ;;
        [nN])
            echo -e "stow is missing. Exiting."
            exit 1
            ;;
        *)
            echo -e "Invalid input received. stow is missing. Exiting."
            exit 1
            ;;        
    esac
fi

stow aliases
stow tmux
stow vim
stow zsh
