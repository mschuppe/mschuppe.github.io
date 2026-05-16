#!/bin/zsh
pwd
asciidoctor -D . doc/index.adoc
asciidoctor -D . doc/composer-performer.adoc
asciidoctor -D . doc/composing-for-voices.adoc
asciidoctor -D . doc/collective-and-interdisciplinary-work.adoc
asciidoctor -D . doc/bridging.adoc
asciidoctor -D . doc/extending.adoc
rsync -a --verbose --perms --times  --prune-empty-dirs --delete-after doc/images .
rsync -a --verbose --perms --times  --prune-empty-dirs --delete-after doc/pdf .
#$NUAGE/software/tools/linkcheck -e --no-show-redirects localhost:8080/index.html
