#!/bin/bash

##
## Copyright Michael I. Love and Rafael A. Irizarry  2015
## (obtained from https://groups.google.com/forum/#!topic/leanpub/zF0u4ZGO6Jsa)
## usage: ./tex2leanpub input.md output.md
##

sed 's/\$\$/@@@@/g' $1 |
    sed 's/ \$/ @@@@/g' |
    sed 's/\$ /@@@@ /g' |
    sed 's/\$\./@@@@\./g' |
    sed 's/\$,/@@@@,/g' |
    sed 's/\$:/@@@@:/g' |
    sed 's/\$-/@@@@-/g' |
    sed 's/(\$/(@@@@/g' |
    sed 's/\$)/@@@@)/g' |
    sed 's/^\$/@@@@/g' |
    sed 's/\$$/@@@@/g' |
    sed 's/:\$/:@@@@/g' |
    sed 's/@@@@/\$\$/g' |
    sed 's/\$\$/{\$\$}/g' | awk '
BEGIN {count = 0;}
{
gsub(/\{\$\$\}/,"@@@@\{\$\$\}@@@@");
n=split($0,a,"@@@@")
line = "";
for (i=1;i<=n;++i){
	if(a[i]=="\{\$\$\}") {
		++count;
		if(count==2) { 
			a[i] = "\{/\$\$\}"; 
			count=0
		}
	}
	line=(line a[i])
}
print line;
}
' > $2
