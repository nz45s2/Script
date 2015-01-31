#!/bin/sh
echo Generating cscope database .........
date
rm cscope.out
find . -regex ".*\.\(c\|h\)" -not -regex ".*\(bench\|hg\|MPC5534\|MPC5553\|MPC5554\|MPC5565\|MPC5566\|MPC5567\|MPC5674F\|MPC5676R\|Diesel\).*" -type f -printf "%p\n" >cscope.file
cscope -Rb -icscope.file
echo Generate cscope database completely .........
date
