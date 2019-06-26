#!/bin/sh

echo "start backup to icloud"

echo "make installed application list..."
brew bundle dump --force --global
brew bundle cleanup --force --global

echo "upload app list and settings..."
mackup backup --force

echo "finish!"
