#!/usr/bin/env bash

bash -c "while read -r -n1 key; do if [[ \${key} == "q" ]]; then break; else sleep 1; fi done"

