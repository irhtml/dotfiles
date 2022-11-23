## Install

1. `echo ".cfg" >> .gitignore`
2. `git clone git@github.com:irhtml/dotfiles.git $HOME/.cfg`
3. `alias config='/usr/bin/git --git-dir=<path to .cfg’s Git directory> --work-tree=$HOME'`
4. `config config --local status.showUntrackedFiles no`
5. `config checkout`
