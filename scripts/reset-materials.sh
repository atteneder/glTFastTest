#!/bin/sh

set -e

pwd=$(cd -P -- "$(dirname -- "$0")" && printf '%s\n' "$(pwd -P)")
source "$pwd/unity.sh"

reset_materials
