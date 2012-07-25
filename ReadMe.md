Scripts
=======


they do stuff  __(As-Is)__


## Script ___bin/mvim___  -- open MacVim files in new tabs


[MacVim](https://github.com/b4winckler/macvim) comes with 
an [mvim](https://github.com/b4winckler/macvim/blob/master/src/MacVim/mvim) script.
__This here__ [`bin/mvim`](https://github.com/Angles/some-scripts/blob/master/bin/mvim) file adds the line `--remote-tab-silent` (opens files in new tabs).


``` bash
# mvim open in tabs
opts="$opts --remote-tab-silent"
```


## Script ___bin/mvimdiff___  -- rock MacVim like vimdiff


Same deal, starts with the [mvim](https://github.com/b4winckler/macvim/blob/master/src/MacVim/mvim) 
script from [MacVim](https://github.com/b4winckler/macvim) repo. Change name to __this here__ [`mvimdiff`](https://github.com/Angles/some-scripts/blob/master/bin/mvimdiff) and make sure these letters __-gdO__ are there, make like vimdiff.


``` bash
# stuff diff args in there
exec "$binary" -gdO ${1:+"$@"}
```


## Notes and files ___pandoc4md.css.md___  -- make html less plain


Everyone loves ___markdown___ like it's great pizza. But rendering it to HTML _need not suck so bad_ [for example](https://raw.github.com/Angles/some-scripts/master/pandoc4md.sample.html). Because I forget _what_ to put _where_, these __notes here__ [pandoc4md.css.md](https://github.com/Angles/some-scripts/blob/master/pandoc4md.css.md), in _markdown_, explain what those files do, where to put it, and what to do with them; _and whose ideas I ripped_. Files in question are:

* ~/.pandoc/pandoc4md.css
* ~/.pandoc/pandoc4md-zenburn.css
* ~/bin/markdown2html.sh

That script `bin/markdown2html.sh` takes optional params (for Pandoc _code_ coloring)


* -t --tango
* -z --zenburn
* -e --espresso
* -k --kate
* -a --haddock 
* (pygments is default, no option is same as -p --pygments)
    *  note __-a__ is _short for --haddock_ because __-h__ is already for _help_.


Typical Usage: typical, but shakey. Pandoc works fine, but I'm _noob_ with these custom css styles.


``` bash
# simple (no param defaults to pygments with light background)
markdown2html.sh Readme.md
# get fancy, code colors from pandoc, but dark background is my fault
markdown2html.sh --zenburn aMarkdownFile.md
# haddock code colors, with light background
markdown2html.sh --haddock aMarkdownFile.md
# kate code colors, with dark background, custom css is my error
markdown2html.sh -k aMarkdownFile.md

# INSIDE the script, using Pandoc and my dubious css styles
/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" -t html -o "$output" "$file"
```


## Notes ___MacVim-vis-sessions.md___  -- easy MacVim sessions


This idea is from here: [http://zackhobson.com/2011/02/21/macvim-sessions.html](http://zackhobson.com/2011/02/21/macvim-sessions.html). Restore a MacVim session with .vis files,
See [that site](http://zackhobson.com/2011/02/21/macvim-sessions.html) for details. 
I forget this all the time. Here, notes here [`MacVim-vis-sessions.md`](https://github.com/Angles/some-scripts/blob/master/MacVim-vis-sessions.md) are a brief, small summary. And it is in `markdown`!


If you stumbled here (eg. mistyped URL) do know: 
-----------------------------------------------

1.  These things I read on internets &amp; added to scripts haphazardly.
    I can not guarantee anything. "As-Is".

3.  I know nothing about licenses. Whatever license(s) these files are supposed to be, they are.

5.  Whatever credits or clauses should be here, is temporary error of stupidity and poor memory.

7.  Dot files rule, bigger is better.

9.  Readme files, not a fan.


