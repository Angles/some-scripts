#!/bin/bash

# $ markdown2html.sh README.markdown
# $ markdown2html.sh "READ ME.markdown"
# this little idea is from here I think, https://github.com/dsanson/Pandoc-Droplets-and-Services 
#for file in "$@"
#do
#    output=${file%%.*}.html
#    pandoc -t html -o "$output" "$file"
#done
# the rest is based on that, pretty much, that parts that work
### for your interest
SAYDEBUG=
SAYDEBUG=1

PROGNAME="$(basename "$0")"
function errorexit() {
  echo "$PROGNAME: $@"
  exit 1
}
if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]] ; then
  echo "USAGE: $PROGNAME markdownfile.md"
fi

# this totally needs improvement
# we do only 1 file here, WORKS with filename with spaces (put quotes on cmd line)
file="${1}"
LOCATION=$(dirname "${1}")
cd "$LOCATION"
output=${file%%.*}.html
# this totally needs improvement
if [[ -f "$output" ]] ; then
  if [[ $SAYDEBUG -gt 0 ]] ; then say "Oops! H T M L file already exists."; fi
  errorexit "$output file already exists. Will not overwrite. Exiting."
fi
#echo "doing: pandoc --standalone --include-in-header=\"$HOME/.pandoc/pandoc4md.css\" -t html -o \"$output\" \"$file\""

#/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" -t html -o "$output" "$file"
#/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=espresso -f markdown -t html -o "$output" "$file"
#/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=pygments -t html5 -o "$output" "$file"
#/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=espresso -t html5 -o "$output" "$file"
#/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=kate -t html5 -o "$output" "$file"

#/usr/local/bin/pandoc --highlight-style=espresso --include-in-header="$HOME/.pandoc/pandoc4md.css" -t html -o "$output" "$file"
#/usr/local/bin/pandoc --standalone --highlight-style=espresso -t html -o "$output" "$file"


/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=pygments -t html5 -o "$output" "$file"
