## MacVim session - one dudez idea (not mine)

# Session Idea from [http://zackhobson.com/2011/02/21/macvim-sessions.html](http://zackhobson.com/2011/02/21/macvim-sessions.html)

A very brief something of the [zackhobson](http://zackhobson.com/2011/02/21/macvim-sessions.html) page.

``` VimML
"Add this to your .gvimrc

""" RESTORE SESSIONS
" from http://zackhobson.com/2011/02/21/macvim-sessions.html
" save session files as .vis with MacVim default opener for it
map <leader>s :mksession!  session.vis<CR>
" automatically source vim sessions so I can open them with the finder
au BufRead *.vis so %
" dbl click .vis will restore session, or try this in ALFERD: open .vis
```

Luck for me ___no one will see this___ and certailny ___will not read this___.

