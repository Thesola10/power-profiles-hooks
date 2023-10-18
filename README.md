# Add hooks to `power-profiles-daemon` profiles

I developed this quick script to help save power by shutting down most P-cores on my laptop, as well as disabling [bees](https://github.com/Zygo/bees) in powersave and performance modes.

This script handles cases where CPUs are disabled, leading to the default `power-profiles-daemon` driver failing to apply, by relaunching it. **HOWEVER**, this means that any hook **MUST** be written in such a way that **ALL** CPU cores are online either **before** or **after** the hook is run.

## Hooks

This script scans for hooks in the following directories:
- `/etc/power-profiles.d/`
- `/usr/local/etc/power-profiles.d/`

In the hooks directory, three subdirs are expected to exist, and all scripts within the directory of the same name as the power profile being applied are run.

This means that, if you wish to run a command when `power-saver` mode is active, you must place it in `/etc/power-profiles.d/power-saver/00-my-script.sh` (or `/usr/local/etc/...` if applicable).
