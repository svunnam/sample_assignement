#! /bin/sh -x

# Build hello world web page

rm -f index.html || exit 1

./hello-world.rb > index.html || exit 1

cat index.html | ./test.sh


