echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/"> filename
find . -type f -printf "%f\t%p\t1\n" >>filename
sort filename >filenametags
rm filename