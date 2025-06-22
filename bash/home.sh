#!/bin/bash

# User-defined PATH variables
#
# These functions are important, but could easily clutter your bashrc.
# Therefore, they are separated into their own file.

export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
. "$HOME/.cargo/env"
