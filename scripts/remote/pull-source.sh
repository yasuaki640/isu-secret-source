#!/bin/sh

cd "$(dirname $0)" || exit 1

cd '!!!!! ADD SOURCE DIRECTORY PATH !!!!!' || exit 1

git checkout HEAD .

git pull