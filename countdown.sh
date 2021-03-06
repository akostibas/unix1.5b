#!/bin/bash

remaining=$(( 1500000000 - $(date +%s)  ))

# Shellcheck complains that single quotes prevent expansion from happening,
# but that is the desired behavior here in order to pass the full command into watch.
# shellcheck disable=SC2016
gtimeout --foreground $remaining watch -n1 'echo $(( 1500000000 - $(date +%s)  ))'
./fireworks.sh
