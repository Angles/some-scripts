Scripts
=======

they do stuff  __(As-Is)__

### [bin/mvim](https://github.com/Angles/some-scripts/blob/master/bin/mvim)   _MacVim open files in new tabs_  ###

[MacVim](https://github.com/b4winckler/macvim) comes with 
an [mvim](https://github.com/b4winckler/macvim/blob/master/src/MacVim/mvim) script.
This here [`bin/mvim`](https://github.com/Angles/some-scripts/blob/master/bin/mvim) adds the line `--remote-tab-silent` (opens files in new tabs).

	  # mvim open in tabs
	  opts="$opts --remote-tab-silent"

### [bin/mvimdiff](https://github.com/Angles/some-scripts/blob/master/bin/mvimdiff)   _make MacVim act like vimdiff_ (anyone remember vimdiff)?!  ###

Same deal, starts with the [mvim](https://github.com/b4winckler/macvim/blob/master/src/MacVim/mvim) 
script from [MacVim](https://github.com/b4winckler/macvim) repo. Change name to this here [`mvimdiff`](https://github.com/Angles/some-scripts/blob/master/bin/mvimdiff)
and make sure these letters _`-gdOS`_ are there, make like vimdiff.

 	    
	  # stuff diff args in there
	  exec "$binary" -gdOS ${1:+"$@"}


### [MacVim-vis-sessions.md](https://github.com/Angles/some-scripts/blob/master/MacVim-vis-sessions.md)  _easy MacVim sessions_ ###
 
This idea is from here: [http://zackhobson.com/2011/02/21/macvim-sessions.html](http://zackhobson.com/2011/02/21/macvim-sessions.html). Restore a MacVim session with .vis files,
See [that site](http://zackhobson.com/2011/02/21/macvim-sessions.html) for details. 
I forget this all the time. The `MacVim-vis-sessions.md` has brief, small summary, in `markdown`!

### [pandoc4md.css.md](https://github.com/Angles/some-scripts/blob/master/pandoc4md.css.md) _make markdow 2 html [look less lame](https://github.com/Angles/some-scripts/blob/master/pandoc4md.sample.html)   ###

Everyone loves ___`markdown`___ like it's great pizza or something. But rendering it to HTML [need not suck so bad](https://github.com/Angles/some-scripts/blob/master/pandoc4md.sample.html). Because I might forget _what_ to put _where_, this here [pandoc4md.css.md](https://github.com/Angles/some-scripts/blob/master/pandoc4md.css.md), which is in _markdown_, explains what `pandoc4md.css` and `markdown2html.sh` do, where to put it, and what to do with them. And it says whose ideas I ripped. Usage is like this,

	  # typical, but shakey
	  markdown2html.sh Readme.md


If you stumbled here (eg. mistyped URL) do know: 
-----------------------------------------------

1.  These things I read on internets &amp; added to scripts haphazardly.
    I can not guarantee anything. "As-Is".

3.  I know nothing about licenses. Whatever license(s) these files are supposed to be, they are.

5.  Whatever credits or clauses should be here, is temporary error of stupidity and poor memory.

7.  Dot files rule, bigger is better.

9.  Readme files, not a fan.


