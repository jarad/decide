#!/bin/bash
FILES=*.md
for f in $FILES
do 
  echo "Converting $f"
  ./tex2leanpub.sh $f ../manuscript/$f
done

git add ../manuscript/*.md
git commit -m "add converted files"
git push

