#!/bin/bash
#this script will uninstall burrow and corresponding files
BURRUW_INSTALL_DIR=($HOME/burrow/burrow)
BURRUW_INSTALL_FILES_DIR=($HOME/burrow)
BURRUW_OLD_FILES=($HOME/burrow-backup)

echo 
echo uninstalling burrow ....

##########################################################################
# we create a folder named burrow-backup and put the burrow old files in it
# if already existed
if [ -d "$BURRUW_INSTALL_FILES_DIR" ]; then

    echo the file already existed, trying to back up the old files. 
    echo and then remove the files   

    if [ ! -d "$BURRUW_OLD_FILES" ]; then
        mkdir $BURRUW_OLD_FILES
    fi

    NEW=$(date "+%Y.%m.%d-%H.%M.%S")
    mkdir $BURRUW_OLD_FILES/$NEW
    mv -v $BURRUW_INSTALL_FILES_DIR/* $BURRUW_OLD_FILES/$NEW
    rm -r $BURRUW_INSTALL_FILES_DIR
fi

# remove burrow's binary
rm $BURRUW_INSTALL_DIR

echo 
echo

