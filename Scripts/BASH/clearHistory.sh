#!/usr/bin/env bash

# This script was created to clear the terminal
# history properly in a Linux bash terminal.

# Clear the terminal history
history -c
# Clear the .bash_history file
echo -n "" > ~/.bash_history
# Clear the terminal again to leave no trace
history -c
# Kill the terminal process to force close the terminal
kill -9 $PPID