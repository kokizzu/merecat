#!/bin/sh -e

cd ../www

../src/merecat -n -p 8086 -l none &
echo $! >/tmp/merecat.test

gzip -c main.css   > main.css.gz
gzip -c index.html > index.html.gz

sleep 1