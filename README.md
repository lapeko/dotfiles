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
- Or run all scripts directly (in case if `make` was not installed)
```shell
./scripts/vim.sh
# all scripts except vars.sh
```

## To add a new config
- Copy your `$HOME./[.your_rc]` into `$HOME/dotfiles/src/[.your_rc]`
- Write a link script (see dotfiles/scripts/vim.sh)
- Add your link script under `dotfiles/Makefile` command `connect`