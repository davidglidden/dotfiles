#!/usr/bin/env bash

###############################################################
# First run: prepare new machine for bootstrap.sh & brew.sh   #
###############################################################

# 1. Ask for the administrator password upfront
sudo -v

# 2. Keep sudo alive: update existing `sudo` time stamp until `runmefirst.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# 3. Update OSX
softwareupdate -iva

# 4. Install the command line tools
xcode-select --install

# 5. You have to do this at some point, *sigh*
sudo xcodebuild -license accept