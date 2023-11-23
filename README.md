# Add hooks to `power-profiles-daemon` profiles

I developed this quick script to help save power by shutting down most P-cores on my laptop, as well as disabling [bees](https://github.com/Zygo/bees) in powersave and performance modes.

Support for CPU hotplugging was dropped due to issues with profile locks. Plan your hooks accordingly.

## Install

On Arch Linux, install the [`power-profiles-hooks-git`](https://aur.archlinux.org/packages/power-profiles-hooks-git) package from AUR.

Otherwise, run `make install` after cloning this repository.

## Hooks

This script scans for hooks in the following directories:
- `/etc/power-profiles.d/`
- `/usr/local/etc/power-profiles.d/`

In the hooks directory, three subdirs are expected to exist, and all scripts within the directory of the same name as the power profile being applied are run.

This means that, if you wish to run a command when `power-saver` mode is active, you must place it in `/etc/power-profiles.d/power-saver/00-my-script.sh` (or `/usr/local/etc/...` if applicable).
