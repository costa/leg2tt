
leg2tt (Hmm...)
======

a very basic leg-to-treetop grammar conversion aid
--------------------------------------------------

leg: http://piumarta.com/software/peg/
Treetop: http://treetop.rubyforge.org/

Since, despite both being PEG parser generators, leg is C and tt is Ruby, you can't expect too much from a converter.
I see it rather as a fair starting point when you've found a working leg grammar, but naturally favor Ruby for work.

To build it, use `make [check]`, the executable name is `leg2tt`. You will need leg & tt installed, duh.
You can also `make install` and `make uninstall` if you see a reason for that.

Maybe I'll make and run a one-pager web app for it, or beef it up otherwise -- if I feel any interest from the community.
