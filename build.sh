#!/usr/bin/env bash

set -e

for dir in ./*/; do
    dir=${dir%*/}
    dir="${dir##*/}"
    cd "$dir" || exit
    echo "Building ghcr.io/vkp-app/addons/$dir:$(cat version.txt)"
    if [ -f build.sh ]; then
    	echo "Running local build.sh..."
    	./build.sh
	fi
    imgpkg push --file-exclusion ".git, version.txt, build.sh, charts" -i "ghcr.io/vkp-app/addons/$dir:$(cat version.txt)" -f .
    cd ../
done
