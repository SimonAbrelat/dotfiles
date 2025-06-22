#!/bin/bash

function relink () {
    if [ -e "$2" ]; then 
        if [ ! -L "$2" ]; then 
            echo "CONFLICT: $2 exists and is NOT a symlink"; 
            exit 1;
        fi
        unlink $2
        echo "INFO: unlinked $2"; 
    fi


    ln -s $(pwd)/$1 $2
    echo "INFO: deployed $2"; 
}

# unlink ~/.bashrc
# unlink ~/.config/bash
# unlink ~/.config/tmux
#
# ln -s $(pwd)/bash/bashrc ~/.bashrc
# ln -s $(pwd)/bash ~/.config/bash
# ln -s $(pwd)/tmux ~/.config/tmux
relink bash/bashrc ~/.bashrc
relink bash ~/.config/bash
relink tmux ~/.config/tmux
