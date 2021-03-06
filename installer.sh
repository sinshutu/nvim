#!/bin/sh
# Standalone installer for Unixs
# Original version is created by shoma2da
# https://github.com/shoma2da/neobundle_installer

if [ $# -ne 1 ]; then
    echo "You must specify the installation directory!"
    exit 1
fi

# Convert the installation directory to absolute path
case $1 in
    /*) PLUGIN_DIR=$1;;
    *) PLUGIN_DIR=$PWD/$1;;
esac

readonly INSTALL_DIR="${PLUGIN_DIR}/repos/github.com/Shougo/dein.vim"

echo "Install to \"$INSTALL_DIR\"..."
if [ -e "$INSTALL_DIR" ]; then
    echo "\"$INSTALL_DIR\" already exists!"
    exit 0
fi

echo ""

# check git command
if type git; then
    : # You have git command. No Problem.
else
    echo 'Please install git or update your path to include the git executable!'
    exit 1
fi

echo ""

# make plugin dir and fetch dein
if ! [ -e "$INSTALL_DIR" ]; then
    echo "Begin fetching dein..."
    mkdir -p "$PLUGIN_DIR"
    git clone https://github.com/Shougo/dein.vim "$INSTALL_DIR"
fi

echo "Done."
echo ""
