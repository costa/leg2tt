
ifndef PREFIX
PREFIX	= /usr/local
endif
BINDIR	= $(PREFIX)/bin

OFLAGS = -O3 -DNDEBUG
CFLAGS = -g -Wall $(OFLAGS) $(XFLAGS)
#OFLAGS = -pg

CC = gcc -std=gnu99

all : leg2tt

test : check .FORCE  # lame?

check : leg2tt .FORCE
	./leg2tt -vo leg2tt.tt leg2tt.leg
	tt -o leg2tt.rb leg2tt.tt

leg2tt.c : leg2tt.leg

install : $(BINDIR)/leg2tt

clean : .FORCE
	rm -f leg2tt leg2tt.o leg2tt.c leg2tt.tt leg2tt.rb

uninstall : .FORCE
	rm -f $(BINDIR)/leg2tt

$(BINDIR)/% : %
	cp -p $< $@
	strip $@

%.c : %.leg
	leg -o $@ $<

.FORCE :
