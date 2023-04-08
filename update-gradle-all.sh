#!/usr/bin/env bash

cd "${0%/*}"

if [ -z "$1" ]
then
  echo "Gradle version missing"
  exit 1
fi

GRADLE_VERSION="$1"

git submodule update --init --recursive --remote

git submodule foreach /usr/bin/env bash $(realpath update-gradle.sh) "$GRADLE_VERSION"

