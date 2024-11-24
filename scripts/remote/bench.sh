#!/bin/sh

echo '!!!!! 競技前は絶対消せ !!!!!'

pwd

cd ~/private_isu.git/benchmarker/

./bin/benchmarker -u ./userdata -t http://172.31.36.74/
