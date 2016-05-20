#! /usr/bin/env bash

source ~/.nix-profile/etc/profile.d/nix.sh

if [ -e $1 ]
then
  cd $1
  for f in *
  do
     nix-store --add-fixed sha256 "$f"
  done
fi
