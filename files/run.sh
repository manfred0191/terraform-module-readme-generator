#!/bin/sh

terraform-config-inspect $MODULE > $MODULE/README.md
cat how-to-release.md >> $MODULE/README.md
