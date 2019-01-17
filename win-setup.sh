#! /usr/bin/env bash

echo "Creating ssh key"
ssh-keygen -t rsa -b 4096 -C "gtalarico.dev@gmail.com"
echo
echo ----------------------------
cat ~/.ssh/id_rsa.pub
echo ----------------------------
echo
cat ~/.ssh/id_rsa.pub | clip
echo "Public key copied to clipboard"
echo "Add key to github sso here: https://github.com/settings/keys"
fish
