pandoc4md.css
============

### the css file `pandoc4md.css` ###

I found a css file at [http://johnmacfarlane.net/pandoc/demo/pandoc.css](http://johnmacfarlane.net/pandoc/demo/pandoc.css), altered it so slightly, changed name to `pandoc4md.css` &amp; put it at `$HOME/.pandoc/pandoc4md.css`.
``` Shell
# args to use this css (partial example)
pandoc --include-in-header="$HOME/.pandoc/pandoc4md.css"
```

markdown2html.sh
================

### some script for it `markdown2html.sh` ###

Some where, maybe the [Pandoc-Droplets-and-Services](https://github.com/dsanson/Pandoc-Droplets-and-Services) repo had simple scripts inside the service. I ripped that part, named it `markdown2html.sh` &amp; put those args in there. Shakey script, it works for me, somewhat.

``` Shell
# it goes like this
pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" \
	-t html -o "$output" "$file"
```

### pandoc4md.css.md ###

Everything must be in `markdown`, and what is this: it is in __`markdown`__.

If you stumbled here (eg, I do not know how): 
--------------------------------------------

1.  These things I read on internets &amp; added to scripts haphazardly.
    I can not guarantee anything. "As-Is".

3.  I know nothing about licenses. Whatever license(s) these files are supposed to be, they are.

5.  Whatever credits or clauses should be here, is temporary error of stupidity and poor memory.

7.  Dot files rule, bigger is better.

9.  Readme files, not a fan.


