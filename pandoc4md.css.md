`pandoc4md.css` and `markdown2html.sh`
====================================

## What it is all about

Better markdown to html conversion. Better looking HTML.
The [Gruber](http://daringfireball.net/projects/markdown/) script `Markdown.pl` 
from [here](http://daringfireball.net/projects/downloads/Markdown_1.0.1.zip) renders HTML without even the `<html>` or `<body>` tags. An obligatory code example,
``` Bash
# using the Gruber script.
~/bin/Markdown.pl Readme.markdown > Readme.html
# using pandoc
/usr/local/bin/pandoc -f markdown -t html readme.md > readme.html
```
In both cases, the rendered HTML has __no headers, no style__. It is a partial html file.

___Is there help out there?___

[Pandoc](http://johnmacfarlane.net/pandoc/installing.html) is fully pimped
out for any conversion needs, a _universal document converter_ [get it](http://johnmacfarlane.net/pandoc/).
`Pandoc` __can give__ a full and better `HTML` conversion ___with a css file, and a command param___.

## Be Specific, no more B.S.

I already forgot this _once_ so here's the deal. Basic templates are in `/usr/local/share/pandoc-1.9.4.2/templates/` for example. Custom stuff goes in __~/.pandoc/__. I did this:

1. Make `$HOME./pandoc/`

2. Copy `/usr/local/share/pandoc-1.9.4.2/templates/default.html` to there, `$HOME./pandoc/default.html`

3. Copy the file here [`~/.pandoc/pandoc4md.css`](https://github.com/Angles/some-scripts/blob/master/.pandoc/pandoc4md.css) in there, so `$HOME./pandoc/pandoc4md.css`

4. That is all I needed, __that covers all readers right now__. 

## File [`~/.pandoc/pandoc4md.css`](https://github.com/Angles/some-scripts/blob/master/.pandoc/pandoc4md.css)

The css file I pilfered, edited and renamed `pandoc4md.css` [__is here__](https://github.com/Angles/some-scripts/blob/master/.pandoc/pandoc4md.css) applies a stylish (if __unorthodox__) HTML rendering used with `--include-in-header`, like this,
``` Bash
# this example line from the markdown2html.sh script
/usr/local/bin/pandoc --include-in-header="$HOME/.pandoc/pandoc4md.css" -t html -o "$output" "$file"
# another example
/usr/local/bin/pandoc --include-in-header="$HOME/.pandoc/pandoc4md.css" -t html "$mdfile" > "$htmlfile"
```
Might render this file like [this example](https://github.com/Angles/some-scripts/raw/master/pandoc4md.sample.html) or not, some browsers show only the `source code`, not so inspirational.

### Who did I rip, borrow the .css from?

Started as a .css file I found at  [http://johnmacfarlane.net/pandoc/demo/pandoc.css](http://johnmacfarlane.net/pandoc/demo/pandoc.css).
I'm __noob__ at _css_, so I altered it just enough to get an interesting
markdown to HTML rendering. I changed name to `pandoc4md.css` __to make it obvious to me what it is for__. 
Now it is here, in __this unknown repo__ on the outskirts of _the GitHub environs_. The next file which __no one else will ever see__ is:


## Script [`markdown2html.sh`](https://github.com/Angles/some-scripts/blob/master/bin/markdown2html.sh)

File `~/bin/markdown2html.sh` applies the above _pandoc4md.css_ style to the markdown to HTML conversion. The code examples above are the basic stuff that's in there. Useage is very simple.

``` Bash
# render file MarkdownRules.md to HTML 
markdown2html.sh MarkdownRules.md
# makes a file called MarkdownRules.html
```

### So who did I rip off this time?

Some where, maybe the [Pandoc-Droplets-and-Services](https://github.com/dsanson/Pandoc-Droplets-and-Services) repo had simple scripts inside the service. I ripped part of it, named it `markdown2html.sh` &amp; put that stuff mentioned above. __Shaky script.  It works for me, somewhat.__

It goes in `~/bin` just like [here](https://github.com/Angles/some-scripts/blob/master/bin/markdown2html.sh). 

TODO: The Script It generates an HTML name __but it will not overwrite__ an existing HTML file of that same name, from a previous MD to HTML conversion. Thus it needs logic to make an alternative HTML name in those cases.
I'm sure the errors are mine.

TODO: [GitHub color code blocks](https://github.com/blog/832-rolling-out-the-redcarpet) not right.

To wrap it up, essentially, these are my notes.




If you stumbled here (e.g., I do not know how): 
--------------------------------------------

1.  These things I read on internets &amp; added to scripts haphazardly.
    I can not guarantee anything. "As-Is".

3.  I know nothing about licenses. Whatever license(s) these files are supposed to be, they are.

5.  Whatever credits or clauses should be here, is temporary error of stupidity and poor memory.

7.  Dot files rule, bigger is better.

9.  Readme files, not a fan.


