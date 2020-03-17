#!/bin/sh

terraform-config-inspect $MODULE > $MODULE/README.md
cat how-to-release.md >> $MODULE/README.md

if [ -d $MODULE/README ]
then
	cat $MODULE/README/* >> $MODULE/README.md
fi
