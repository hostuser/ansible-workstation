#! /usr/bin/env bash

source ~/.nix-profile/etc/profile.d/nix.sh

cd $1/nix-external
for f in *
do
   nix-store --add-fixed sha256 "$f"
done
