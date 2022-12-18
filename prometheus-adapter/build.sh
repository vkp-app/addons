#!/usr/bin/env bash

set -eux

git clone https://github.com/kubernetes-sigs/prometheus-adapter
cp -r prometheus-adapter/deploy/manifests .
rm -rf prometheus-adapter/
