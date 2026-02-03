#!/bin/bash

grep -f ../cache/LIST <(ls /bin) | xargs -n 1 cp -t ~/Projects/.dotfiles/bin

