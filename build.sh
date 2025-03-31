#!/bin/zsh
cd csl
./build.sh
cd ..
cd int_essay
./build.sh
cd ..
cd mentor
./build.sh
cd ..
cd now
./build.sh
cd ..
cd path
./build.sh
cd ..
cd recording
./build.sh
cd ..
cd review
./build.sh
cd ..
cd works
./build.sh
cd ..
cd extend
./build.sh
cd ..
cd bridge
./build.sh
cd ..
asciidoctor -D . doc/index.adoc
rsync -a --verbose --perms --times  --prune-empty-dirs --delete-after doc/images .
rsync -a --verbose --perms --times  --prune-empty-dirs --delete-after doc/pdf .
#$NUAGE/software/tools/linkcheck -e --no-show-redirects localhost:8080/index.html
