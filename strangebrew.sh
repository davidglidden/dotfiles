#!/usr/bin/env bash

#######################################
# Weekly upgrade script               #
#######################################

#######################################
# Brew                                #
#######################################
	# 1. Update base software
	brew update
	# 2. Update all packages
	brew upgrade --all
	# 3. Cleanliness is next to Godliness
	brew cleanup

