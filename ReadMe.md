Scripts
=======

they do stuff  __(As-Is)__

### `mvim` open in tabs ###

[MacVim](https://github.com/b4winckler/macvim) comes with 
an [mvim](https://github.com/b4winckler/macvim/blob/master/src/MacVim/mvim) script.
This `mvim` adds the line with `--remote-tab-silent` (and maybe some others).

	  # mvim open in tabs
	  opts="$opts --remote-tab-silent"

### mvimdiff ###

Same deal, starts with the [mvim](https://github.com/b4winckler/macvim/blob/master/src/MacVim/mvim) 
script from [MacVim](https://github.com/b4winckler/macvim) repo. Change name to `mvimdiff`
and make sure these letters `-gdOS` are there, make like vimdiff.

 	    
	  # stuff diff args in there
	  exec "$binary" -gdOS ${1:+"$@"}


### MacVim-vis-sessions.md ###
 
This idea is from here: [http://zackhobson.com/2011/02/21/macvim-sessions.html](http://zackhobson.com/2011/02/21/macvim-sessions.html). Restore a MacVim session with .vis files,
See [that site](http://zackhobson.com/2011/02/21/macvim-sessions.html) for details. 
I forget this all the time. The `MacVim-vis-sessions.md` has brief, small summary, in `markdown`!

### pandoc4md.css.md ###

That is in `markdown` that is most import. Also it says what `pandoc4md.css` and `markdown2html.sh` do, where to put it, and what to do with them. I might forget what to put where. And it says whose ideas I ripped. Usage is like this,

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


