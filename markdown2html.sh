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
PROGNAME="$(basename "$0")"
function errorexit() {
  echo "$PROGNAME: $@"
  exit 1
}
# this totally needs improvement
# we do only 1 file here, WORKS with filename with spaces (put quotes on cmd line)
file="${1}"
LOCATION=$(dirname "${1}")
cd "$LOCATION"
output=${file%%.*}.html
# this totally needs improvement
if [[ -f "$output" ]] ; then
  errorexit "$output already exists, will not overwrite. exiting."
fi
echo "pandoc -t html -o $output $file"
/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" -t html -o "$output" "$file"

