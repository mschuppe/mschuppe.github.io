#!/bin/zsh
asciidoctor -D ./build **/*.adoc
rsync -a --verbose --perms --times  --prune-empty-dirs --delete-after doc/images ./build
rsync -a --verbose --perms --times  --prune-empty-dirs --delete-after doc/pdf ./build
