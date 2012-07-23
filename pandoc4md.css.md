`pandoc4md.css` and `markdown2html.sh`
====================================

## What it is all about ##

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

## How did this happen? ##

Many later conversion methods emulate the Gruber script as a starting point.
That is why the `pandoc` conversion gives the same results. 
Even the __all powerful__ and __most wise__ GitHub markdown to html readme rendering is
pretty basic, _shhh, quiet_. 

## Is there help out there? ##

[Pandoc](http://johnmacfarlane.net/pandoc/installing.html) is fully pimped
out for any conversion needs, a _universal document converter_ [get it](http://johnmacfarlane.net/pandoc/).
`Pandoc` __can give__ a full and better `HTML` conversion result; yes the power is ready to 
burst out into snazzy markdown to HTML renders -- ___with a css file, and a command param___.

## Be Specific, no more B.S. ##

The power is in the `~/.pandoc/` directory. I already forgot this _once_ or more, so: Pandoc puts basic templates at `/usr/local/share/pandoc-1.9.4.2/templates/` for example. The internets have tons of templates, but that confuses me, so I did this:

1. Make `$HOME./pandoc/`

2. Copy `/usr/local/share/pandoc-1.9.4.2/templates/default.html` to there, `$HOME./pandoc/default.html`

3. Copy the file here [`~/.pandoc/pandoc4md.css`](https://github.com/Angles/some-scripts/blob/master/.pandoc/pandoc4md.css) in there, so `$HOME./pandoc/pandoc4md.css`

4. That is all I need for this, so __that covers all readers right now__. 

## File [`~/.pandoc/pandoc4md.css`](https://github.com/Angles/some-scripts/blob/master/.pandoc/pandoc4md.css) ##

The css file I pilfered, edited and renamed `pandoc4md.css` [__is here__](https://github.com/Angles/some-scripts/blob/master/.pandoc/pandoc4md.css) to help.
`pandoc4md.css` file is used with `--include-in-header`, like this,
``` Bash
/usr/local/bin/pandoc --include-in-header="$HOME/.pandoc/pandoc4md.css" -t html -o "$output" "$file"
```
That applies a stylish (if __unorthodox__) HTML rendering from my tweaked `pandoc4md.css`.
And __importantly__ brings brings the `~./pandoc/` directory, and its stock templates, 
like `~/.pandoc/default.html` to bear in the monumental and, like, cool task of bearable `html`.
Another code example:
``` Bash
/usr/local/bin/pandoc --include-in-header="$HOME/.pandoc/pandoc4md.css" -t html "$mdfile" > "$htmlfile"
```
Might render this file like [this](https://github.com/Angles/some-scripts/raw/master/pandoc4md.sample.html) or not, some browsers show only the `source code`, not so inspirational.

## Who did I rip, I mean, get inspired by.  ##

This `~/.pandoc/pandoc4md.css` started as a .css file I found at  [http://johnmacfarlane.net/pandoc/demo/pandoc.css](http://johnmacfarlane.net/pandoc/demo/pandoc.css).
I'm __noob__ at _css_, so I altered it just enough to get an interesting
markdown to HTML rendering. Thus [pandoc4md.css](https://github.com/Angles/some-scripts/blob/master/.pandoc/pandoc4md.css) began its
tragic, yet not unworthy, road to __this unknown repo__ on the outskirts of _the GitHub environs_.
I changed name to `pandoc4md.css` __to make it obvious to me what it is for__.

Put it at `$HOME/.pandoc/pandoc4md.css`, where it should be. Many files are there, I'd forget what 
was what had I not named it such. __No one else will ever know anyway__.


## Script [`markdown2html.sh`](https://github.com/Angles/some-scripts/blob/master/bin/markdown2html.sh) ##

File `~/bin/markdown2html.sh` applies the above _pandoc4md.css_ style to the markdown to HTML conversion. The code examples above are the basic stuff that's in there.

### So who did I rip off this time? ###

Some where, maybe the [Pandoc-Droplets-and-Services](https://github.com/dsanson/Pandoc-Droplets-and-Services) repo had simple scripts inside the service. I ripped part of it, named it `markdown2html.sh` &amp; put that stuff mentioned above. __Shaky script.  It works for me, somewhat.__

It goes in `~/bin` just like [here](https://github.com/Angles/some-scripts/blob/master/bin/markdown2html.sh). 

TODO: The Script It generates an HTML name __but it will not overwrite__ an existing HTML file of that same name, from a previous MD to HTML conversion. Thus it needs logic to make an alternative HTML name in those cases.
I'm sure the errors are mine.

TODO: [GitHub color code blocks](https://github.com/blog/832-rolling-out-the-redcarpet) not right.

To wrap it up, essentially, these are my notes.


## Notes `pandoc4md.css.md` - explains, why? ##

*    Everything must be in `markdown`, and this file is in `markdown`.

*    Without this I'd forget some of this stuff.

*    It's raining, there is not much else to do. Boredom is somewhere between the lines.

*    I wrote this a little here, some there. Slowly adding to this, this... thing.

*	   It took longer to write this than... I can't think of an analogy right now.



If you stumbled here (e.g., I do not know how): 
--------------------------------------------

1.  These things I read on internets &amp; added to scripts haphazardly.
    I can not guarantee anything. "As-Is".

3.  I know nothing about licenses. Whatever license(s) these files are supposed to be, they are.

5.  Whatever credits or clauses should be here, is temporary error of stupidity and poor memory.

7.  Dot files rule, bigger is better.

9.  Readme files, not a fan.


