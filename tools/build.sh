#!/bin/bash

cd $(dirname $(cd `dirname $0`; pwd))

rm -r ./docs
rm -r ./resources

hugo -D

# restore .nojekyll file
git restore ./docs/.nojekyll

# restore CNAME file
git restore ./docs/CNAME
