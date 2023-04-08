#!/usr/bin/env bash

set -ex

cd "${0%/*}"

git submodule foreach git push

