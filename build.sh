#!/usr/bin/env bash

set -e

for dir in ./*/; do
    dir=${dir%*/}
    dir="${dir##*/}"
    cd "$dir" || exit
    echo "Building ghcr.io/vkp-app/addons/$dir:$(cat version.txt)"
    imgpkg push --file-exclusion ".git, version.txt" -i "ghcr.io/vkp-app/addons/$dir:$(cat version.txt)" -f .
    cd ../
done
