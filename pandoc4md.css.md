pandoc4md.css
============

### File `~/.pandoc/pandoc4md.css`  ###

I found a css file at [http://johnmacfarlane.net/pandoc/demo/pandoc.css](http://johnmacfarlane.net/pandoc/demo/pandoc.css), altered it so slightly, changed name to `pandoc4md.css` &amp; put it at `$HOME/.pandoc/pandoc4md.css`.

``` Shell
# args to use this css partial example
# the key is this
pandoc --include-in-header="$HOME/.pandoc/pandoc4md.css"
```


markdown2html.sh - conversion script
====================================

### File `~/bin/markdown2html.sh` ###
# Applies the above _pandoc4md.css_ style to the MD to HTML conversion #

Some where, maybe the [Pandoc-Droplets-and-Services](https://github.com/dsanson/Pandoc-Droplets-and-Services) repo had simple scripts inside the service. I ripped that part, named it `markdown2html.sh` &amp; put those args in there. Shaky script.  It works for me, somewhat.


``` Shell
# most simple MD to HTML conversion using pandoc is this
pandoc -t html -o "$output" "$file"
# for better formatting, the key arg is (partial example)
/usr/local/bin/pandoc --include-in-header="$HOME/.pandoc/pandoc4md.css" -t html -o "$output" "$file"
```


TODO: The Script It generates an HTML name __but it will not overwrite__ an existing HTML file of that same name, from a previous MD to HTML conversion. Thus it needs logic to make an alternative HTML name in those cases.


### File pandoc4md.css.md - explains this stuff ###

Everything must be in `markdown`, and this file that _you_, no __I__ am reading, it is in `markdown`.


If you stumbled here (e.g., I do not know how): 
--------------------------------------------

1.  These things I read on internets &amp; added to scripts haphazardly.
    I can not guarantee anything. "As-Is".

3.  I know nothing about licenses. Whatever license(s) these files are supposed to be, they are.

5.  Whatever credits or clauses should be here, is temporary error of stupidity and poor memory.

7.  Dot files rule, bigger is better.

9.  Readme files, not a fan.


