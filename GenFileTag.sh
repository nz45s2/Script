#!/bin/sh
echo Generating filetag and tags .........
date
echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/"> filename
find . -regex ".*\.\(c\|h\|mak\|lcf\|loc\|dld\|py\|cdf\|anc\|i\|pl\|bat\|cmd\|lkf\|s\|asm\)" -not -regex ".*\(bench\|hg\|MPC5534\|MPC5553\|MPC5554\|MPC5565\|MPC5566\|MPC5567\|MPC5674F\|MPC5676R\|Diesel\).*" -printf "%f\t%p\t1\n" >>filename
sort filename >filenametag
rm filename
echo Generate filetag and tags completely .........
date
