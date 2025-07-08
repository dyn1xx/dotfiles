# How to use:

## Clone repo to ~/.dotfiles

```
git clone git@github.com:dyn1xx/dotfiles.git ~/.dotfiles
```

## Remove existing dotfiles in ~/.config

```
trash -r ~/.config/{dotfile-dirs}
```

## Create symlinks with stow

```
cd ~/.dotfiles
stow .
```
