#!/bin/sh

scriptsBackup() {
	local gbScripts='/c/dev/scripts/git-bash/'
	local gblProfile='/c/Program Files/Git/etc/profile.d'

	local gbScriptsBackup='/mnt/c/Users/User/OneDrive/LexBorisov/dev/scripts/git-bash/scripts-backup'
	local gblProfileBackup='/mnt/c/Users/User/OneDrive/LexBorisov/dev/scripts/git-bash/profile-backup'
	
	# backup scripts
	if [ "$(ls -A $gbScriptsBackup)" ]; then
		rm -rf $gbScriptsBackup/*
	fi
	cp -r $gbScripts/* $gbScriptsBackup

	# backup profile
	if [ "$(ls -A $gbProfileBackup)" ]; then
		rm -rf $gbProfileBackup/*
	fi
	cp -r $gbProfile/* $gbProfileBackup
}
