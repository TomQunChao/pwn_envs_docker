#!/usr/bin/env bash

envs=("u16" "u18" "u20" "u22")
for e in ${envs[*]}
do
  cat example_build.sh | sed "s/ENV_VERSION/$e/g" > $e/build.sh
done

