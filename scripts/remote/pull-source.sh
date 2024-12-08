#!/bin/sh

echo "!!!!!! 競技直後パスは確認しろ !!!!!"
cd /home/isucon/webapp || exit 1

git checkout HEAD .

git pull