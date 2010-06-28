
leg2tt (Hmm...)
======

a very basic leg-to-treetop grammar conversion aid
--------------------------------------------------

Since, despite both being PEG parser generators, [leg](http://piumarta.com/software/peg/) is C and [Treetop](http://treetop.rubyforge.org/) is Ruby, you can't expect too much from a converter.
I rather see it  as a fair starting point when you've found a working leg grammar, but naturally favor Ruby for work.
(My reason for writing this thing is my project on treetop-based document schemata using [Markdown](http://daringfireball.net/projects/markdown/) -- [currently having a leg grammar](http://github.com/jgm/peg-markdown/) -- as a host "language".)

To build, use `make [check]`, the resulting executable name is `leg2tt`. You will need make, gcc, leg & tt installed/accessible, duh.  
You can also `make install` and `make uninstall` if you see a reason for that.

Maybe I'll make and run a one-pager web app for it, or beef it up otherwise -- if I feel any interest from the community.  
