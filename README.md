# dotfiles

## 2022-05-23 updates

Switched to using [Dotbot](https://github.com/anishathalye/dotbot) for dotfile config a while back but did not document it well

- the intent is that i should be able to clone this repo, `cd` to its directory, nake sure the submodules are correctly set up (not sure if I _ought_ to need to do anything there or not) and run `./install` and have everything sorted
  - there's a bit of chicken / egg - the secrets stuff for the wakatime config and some things in `zenv` come from a dropbox-hosted directory. Dropbox is homebrew-managed.
- using `dotbot` and `dotbot-brew` as submodules. dotbot-brew adds `brewfile` support
- `preinstall-sh` is intended to install homebrew first time out. The `sudo` checking doesn't work well so not sure if it works without hand-holding - running some command under `sudo` right before the first indstall seems to avoid that.

## MacOS
Selected items from Mathias Bynens [dotfiles](https://github.com/mathiasbynens/dotfiles)

## Glitch
For new [Glitch](https://glitch.com) projects, [glitch-init.sh](glitch-init.sh) sets up a nice console using [bash-it](https://github.com/Bash-it/bash-it). 

## Fastly Setup
During setting up my Fastly laptop I ran into a couple of "bugs"

- the aforementioned secrets / Dropbox situation
- Similarly the wakatime config file needs to be written first, which requires having run wakatime in vs code and added your api key. could store that in secrets, too, but...
- alfred needs to be started up, have its licence key applied, and then have the prefs folder set to the dropbox alfredapp folder
- iterm2 can I save my defults
- atuin setup

