@echo off
set path=%path%
echo Generating tags .........
time /t
ctags -R --c++-types=+p --fields=+iaS --extra=+q
echo Generate tags completely .........
time /t
@echo on
