#!/bin/bash

set -e
set -x 

rspec  --format documentation --color  "test/spec"

foodcritic -f correctness,services,libraries,deprecated  .
rubocop -Da .

kitchen test -c 4
