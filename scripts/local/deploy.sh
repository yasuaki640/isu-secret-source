#!/bin/bash

cd "$(dirname $0)" || exit 1

declare ssh_commands
IFS=$'\r\n' GLOBIGNORE='*' command eval  'ssh_commands=($(cat ./ssh_commands.txt))'

bench_ssh_command=$(cat bench_ssh_commands.txt)

for cmd in "${ssh_commands[@]}"
do
  echo "============= ${cmd} ============="

  echo "---------- deploy source ----------"
  ${cmd} 'bash -s' < ../remote/pull-source.sh
  echo

  echo "---------- reload and restart services ----------"
  ${cmd} 'bash -s' < ../remote/reload-nginx-conf.sh
  echo

  echo "---------- rotate logs ----------"
  ${cmd} 'bash -s' < ../remote/rotate-mysql-slow-log.sh
  ${cmd} 'bash -s' < ../remote/rotate-nginx-access-log.sh
  echo

  echo "---------- run benchmarks ----------"
  ${bench_ssh_command}  'bash -s' < ../remote/bench.sh

  echo "---------- dump logs ----------"
  ${cmd} 'bash -s' < ../remote/dump-mysql-slow-log.sh
  echo

  echo "============= ${cmd} ============="
  echo
done