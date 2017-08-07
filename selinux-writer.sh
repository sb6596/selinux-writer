#!/bin/bash

## Questions about device to set path
echo -n "Where is your device tree? "
read tree

echo -n "Where is your logcat? "
read logcatpath

# Dirs
LOGCAT=$logcatpath
SEPOLICY=$tree/sepolicy

# SELinux strings
scontext=
tcontext=
tclass=
deniedthing=

# Now paste all the policy
echo "allow $scontext $tcontext:$tclass { $deniedthing };" >> $SEPOLICY/$scontext.te
