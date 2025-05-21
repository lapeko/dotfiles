# Description
A Git folder `dotfiles` with users .rc files in `dotfiles/src` with scripts for semi-linking them in `dotfiles/scripts`. You can run scripts using `dotfiles/Makefile`

## Steps to sync
- clone the repo into your `$HOME` folder
```shell
cd ~ && git clone git@github.com:lapeko/dotfiles.git
```
- move to the new `dotfiles` folder
```shell
cd ./dotfiles
```
- run `make` command. (See Makefile)
```shell
make connect
```
- Or run the script directly (in case if `make` was not installed)
```shell
./scripts/sync.sh .vimrc .zshrc # Recheck the arguments in the `dotfiles/Makefile` list `CONFIGS`
```

## To add a new config
- Copy your `$HOME./[.your_rc]` into `$HOME/dotfiles/src/[.your_rc]`. Eg: `.vimrc`
- Add `[.your_rc]` eg `.vimrc` to the `dotfiles/Makefile` list `CONFIGS`
