#!/bin/sh
echo Generating tags .........
date
ctags -R --c++-types=+p --fields=+iaS --extra=+q
echo Generate tags completely .........
date