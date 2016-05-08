#! /usr/bin/env bash

source ~/.nix-profile/etc/profile.d/nix.sh

cd /var/cache/nix-external
for f in *
do
   nix-store --add-fixed sha256 "$f"
done
