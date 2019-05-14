#!/bin/bash

set -e

# Running command provided by docker compose
echo "Running:" "$@"

$@
