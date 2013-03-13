#!/bin/bash
KEYBINDING_DIR=~/Library/KeyBindings

echo "Checking for $KEYBINDING_DIR"
mkdir -p $KEYBINDING_DIR

FILE=~/Library/KeyBindings/DefaultKeybinding.dict
BACKUP_FILE="${FILE}.back.$(date +%Y%m%d_%H%M%S)"

if [ -f $FILE ]; then
    echo "Found existing $FILE"
    echo "copying to $BACKUP_FILE"
    cp $FILE $BACKUP_FILE
fi

cp DefaultKeybinding.dict ~/Library/KeyBindings/
