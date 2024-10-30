# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.5] - 2024-10-30
### Added

- New theme for vim (gruvbox)
- Stow ignore file

### Edited
- Padding changes to Alacritty config
- `.vimrc` set to dark mode
- Modified location of Alacritty config


## [0.0.4] - 2024-10-08
### Added

- Tracking Alacritty config files

### Edited

- Moved all subdired files to root dir
- Modified `setup.sh` to use `stow .` instead

### Fixed

- Fixed stow command check in `setup.sh`

## [0.0.3] - 2024-01-03
### Added

- Syntax highlighting for email files in vim

### Edited

- `.aliases` file with some additional links

## [0.0.2] - 2023-12-23
### Fixed

- Fixed issue with committing nerdtree

## [0.0.1] - 2023-11-26

### Added

- Added config files for tmux, zsh, vim and aliases
- Initial commit contains readme file and changelog
- Created simple setup script to use `stow` for deploying the files
