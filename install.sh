#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo -n "Site name: "
read SITE

cd $DIR/md
for FILE in *.md
do
  cmark "$FILE" > "../html/${FILE%.md}.html"
done

cd $DIR/html
for FILE in *.html
do
  sed -e "s/{WEBSITE}/$SITE/g" -i $FILE
done
