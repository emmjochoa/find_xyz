#!/bin/bash
#
# author: Emmanuel Ochoa
# date: Nov. 7, 2024
#

my_xyz=$1

if [ -z "${my_xyz}" ]; then
  echo "usage: find_xyz.sh <pattern>"
  exit 1
fi

## Change this to specific file pattern
# Example:
# file_pattern="output_b\*"
file_pattern="*"

find . -type f -name "${file_pattern}" -exec grep --color -Hn "${my_xyz}" {} \;

exit 0