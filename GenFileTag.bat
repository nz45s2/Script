@echo off
set path=%path%
echo Generating filetag and tags .........
time /t
echo !_TAG_FILE_SORTED	2	/0=unsorted, 1=sorted, 2=foldcase/ >filename
gfind . -regex ".*\.\(c\|h\|mak\|lcf\|loc\|dld\|py\|cdf\|anc\|i\|pl\|bat\|cmd\|lkf\|s\|asm\)" -not -regex ".*\(bench\|hg\|MPC5534\|MPC5553\|MPC5554\|MPC5565\|MPC5566\|MPC5567\|MPC5674F\|MPC5676R\|Diesel\).*" -printf "%%f\t%%p\t1\n" >>filename
gsort filename >filenametag
del filename
echo Generate filetag and tags completely .........
time /t
@echo on
