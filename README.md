# dotfiles
Assorted config and dotfiles for the inevitable twilight that awaits my 2012 Retina MBP, whose Y, U, I, O keys no longer work and whose fans scream "kill me now" on the daily.

## What's included

#### `.bash_profile`
Custom PS1 prompt, color settings, `rbenv` + `virtualenv` setup, aliases, #teamvim

#### `.gitconfig`
Git/Heroku credentials, colors, aliases for ants (all two letters long)

#### `.vimrc`
Two spaces, soft tabs, syntax highlighting, no temp files

#### `.virtualenvs/postactivate`
Custom PS1 prompt when using a `virtualenv`

#### `.yarnrc`
Offline package mirror for `yarn`

#### `.hyper.js`
Fira Code w/ ligatures, Spacegrey theme, emoji line-height fix, plugins

#### `.atom/.atompkg`
List of Atom packages — use `fission.sh` and `fusion.sh` to sync

#### `.atom/config.cson`
Disabled core packages, Fira Code + Spacegrey, editor settings 

## Usage

### Basic setup
```sh
$ git clone https://github.com/s2tephen/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ chmod +x setup.sh
$ ./setup.sh
```

### Atom packages
```sh
# Install all Atom packages
$ chmod +x fusion.sh
$ ./fusion.sh

# Refresh package list after updates/installations
$ chmod +x fission.sh
$ ./fission.sh
```
