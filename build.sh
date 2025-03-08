#!/bin/zsh
cd archive
./build.sh
cd ..
cd csl
./build.sh
cd ..
cd int_essay
./build.sh
cd ..
asciidoctor -D . **/index.adoc
rsync -a --verbose --perms --times  --prune-empty-dirs --delete-after doc/images .
rsync -a --verbose --perms --times  --prune-empty-dirs --delete-after doc/pdf .
#$NUAGE/software/tools/linkcheck -e --no-show-redirects localhost:8080/index.html
