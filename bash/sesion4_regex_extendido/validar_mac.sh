#!/bin/bash
if [[ $1 =~ ([0-9a-f]{2}:){5}[0-9a-f]{2}$ ]]; then
    echo "$1 tiene formato de mac"
else
    echo "$1 no tiene formato de mac"
fi