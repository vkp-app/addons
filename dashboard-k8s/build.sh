#!/usr/bin/env bash

set -eux

rm recommended.yaml
wget https://raw.githubusercontent.com/kubernetes/dashboard/v2.6.1/aio/deploy/recommended.yaml