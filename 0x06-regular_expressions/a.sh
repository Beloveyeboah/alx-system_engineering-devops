#!/bin/bash

touch $1
chmod u+x $1
echo "#!/usr/bin/env ruby" > $1
echo "# the script " >> $1
