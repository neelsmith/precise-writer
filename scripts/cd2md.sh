#!/bin/bash

GROOVY=`which groovy`

for f in $*
do

    baseName=$(echo $f | sed -e "s/.md//")
    newFile=${baseName}-converted.md
    CMD="${GROOVY} /vagrant/scripts/cd2md.groovy $f $newFile"
    ${CMD}
done

read XIT

