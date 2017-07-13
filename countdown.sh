#!/bin/bash

watch -n1 'echo $(( 1500000000 - $(date +%s)  ))'
