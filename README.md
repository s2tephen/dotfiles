# dotfiles
Assorted config and dotfiles for the inevitable twilight that awaits my 2012 Retina MBP, whose Y, U, I, O keys no longer work and whose fans scream "kill me now" on the daily.

## What's included

### Shell ([`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh))
* **`.zshrc`** - Set PATH, `oh-my-zsh` theme and plugins, default editor, aliases
* **`.bash_profile`** - Fallback `bash` settings when switching shells
* **`.oh-my-zsh/custom/autotitle_patch.zsh`** - Set tab title to current working directory
* **`.oh-my-zsh/custom/.zshplugins`** - List of `zsh` plugins (use `[import|export]-zsh-plugins.sh` to sync)
* **`.oh-my-zsh/custom/plugins/rbenv/rbenv.plugin.zsh`** - Patch to use [`rbenv`](https://github.com/rbenv/rbenv) with `zsh`
* **`.oh-my-zsh/custom/themes/ssuen.zsh-theme`** - Set prompt layout and LSCOLORS

### [Atom](https://github.com/atom/atom)
* **`.atom/.atompkg`** - List of Atom packages (use `[import|export]-atom-packages.sh` to sync)
* **`.atom/config.cson`** - Disabled core packages, font/theme settings, editor settings
* **`.atom/styles.less`** - Override tree view colors and markdown preview styling

### [Hyper](https://github.com/zeit/hyper)
* **`.hyper.js`** - Font/theme settings, link/underline styles, plugins and overrides, use `zsh` as shell

### Other configs
* **`.gitconfig`** - Git/Heroku credentials, colors, aliases for ants (two letters long)
* **`.vimrc`** - Two spaces, soft tabs, syntax highlighting, no temp files
* **`.virtualenvs/postactivate`** - Prompt styling for [`virtualenv`](https://github.com/pypa/virtualenv)
* **`.yarnrc`** - Offline package mirror for [`yarn`](https://github.com/yarnpkg/yarn)

## Usage

### Basic setup
```sh
$ git clone https://github.com/s2tephen/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ chmod +x setup.sh
$ ./setup.sh
```

### `zsh` plugins
```sh
# Install/update all zsh plugins
$ chmod +x import-zsh-plugins.sh
$ ./import-zsh-plugins.sh

# Refresh plugin list after installations
$ chmod +x export-zsh-plugins.sh
$ ./export-zsh-plugins.sh
```

### Atom packages
```sh
# Install all Atom packages
$ chmod +x import-atom-packages.sh
$ ./import-atom-packages.sh

# Refresh package list after updates/installations
$ chmod +x export-atom-packages.sh
$ ./export-atom-packages.sh
```
