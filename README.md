# My dotfiles (for Home)

This directory contains the dotfiles for my OpenSuse Tumbleweed system

## Requirements

Ensure you have the follwoing installed on your system

### Git & Github gh CLI

```
sudo zypper install git-core
sudo zypper addrepo https://cli.github.com/packages/rpm/gh-cli.repo
sudo zypper ref
sudo zypper install gh
```

### Stow

```
sudo zypper install stow
```
## Installation

First, check out the dotfiles repo in your $HOME director using git

```
git clone https://github.com/Digital-Learner/dotfiles.git
cd dotfiles
``` 
then use GNU Stow to create symlinks

```
stow .
```


To stow a single package e.g. nvim use the following command from within the `~/.dotfiles` directory

```
stow -d .config -S nvim -t ~/.config/nvim -v
```

To perform a 'dry run' pass the `-n` flag
To provide more verbose logging pass the flag `-vvv`


## Initial content sources

[Hyperland for Newbs](https://typecraft.dev/hyprland-for-newbs) and 
[Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)
