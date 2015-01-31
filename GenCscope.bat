@echo off
set path=%path%
echo Generating cscope database .........
time /t
del cscope.out
REM gfind . -regex ".*\.\(c\|h\|mak\|lcf\|loc\|dld\|py\|cdf\|anc\|i\|pl\|bat\|cmd\|lkf\|s\|asm\)" -not -regex ".*\(bench\|MPC5534\|MPC5553\|MPC5554\|MPC5565\|MPC5566\|MPC5567\|MPC5674F\|MPC5676R\|Diesel\).*" -type f -printf "%%p\n" >cscope.file
gfind . -regex ".*\.\(s\|c\|h\)" -not -regex ".*\(Complex_IO_TCB_EMS\\Knock\|10027988_BootBlock\|tools\|bench\|git\|MPC5534\|MPC5553\|MPC5554\|MPC5565\|MPC5566\|MPC5567\|MPC5674F\|MPC5676R\|Diesel\).*" -type f -printf "%%p\n" >cscope.file
cscope -Rbqk -icscope.file
echo Generate cscope database completely .........
time /t
@echo on
