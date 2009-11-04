
ifndef PREFIX
PREFIX	= /usr/local
endif
BINDIR	= $(PREFIX)/bin

OFLAGS = -O3 -DNDEBUG
CFLAGS = -g -Wall $(OFLAGS) $(XFLAGS)
#OFLAGS = -pg

CC = gcc -std=gnu99


all : leg2tt

install : $(BINDIR)/leg2tt

clean : .FORCE
	rm -f leg2tt.o leg2tt.c

uninstall : .FORCE
	rm -f $(BINDIR)/leg2tt

check : leg2tt .FORCE
	./leg2tt < leg2tt.leg > leg2tt.out
	diff leg2tt.leg-c leg2tt.out
	rm -f leg2tt.out

$(BINDIR)/% : %
	cp -p $< $@
	strip $@

%.c : %.leg
	leg < $< > $@

.FORCE :
