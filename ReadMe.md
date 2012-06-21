Obligatory Scripts
==================

WTF Are They
------------

Crude hacks that work for me,
they work for you? __As-Is__

### `mvim` to always open in new tab ###

The same as `mvim` from the MacVim package with the small
addition of `--remote-tab-silent` option added, so 
`mvim` from terminal will always open a new tab.
Like dropping file MacVim icon, You like dropping, yes?

### mvimdiff ###

The same as `mvim` from the MacVim package with the small
addition of `-gdO` to the options, acting like vimdiff.


### MacVim-vis-sessions.md ###

Idea from <http://zackhobson.com/2011/02/21/macvim-sessions.html>
to RESTORE SESSIONS using .vis, read that site for details. 
A brief, brief, small summary is in the (obligatory) markdown file.

I put them here like a backup and stuff. 
---------------------------------------

1.  These are things I read about on the net, then added to the
    files in a haphazard way. I can not guarantee anything. "As-Is".

3.  I know nothing about licenses.

4.  Whatever license(s) these files are supposed to be, they are.
    Whatever credits or required clauses should be here, it's
    a temporary error of stupidity and poor memory.

7.  Dot files rule, bigger is better.


Obligatory Code example. Here's the beef.

    # open in tabz
    opts="$opts --remote-tab-silent"
    # stuff, like for diff
    case "$name" in
    	*vimdiff)
    		opts="$opts -dO"
          ....





