#! /bin/sh

# test hello world web page from std in

(set -x; cat - | grep "Hello World")

if [ $? -eq 0 ]; then
  echo Test: grep passed
else
  echo Test: grep failed: \$\?=$?
fi

