project_name := tvheadend-safe-restart

INSTALL_PROGRAM := install
INSTALL_DATA := install -m 644

prefix := /usr/local
datarootdir := $(prefix)/share
exec_prefix := $(prefix)
bindir := $(exec_prefix)/bin
docdir := $(datarootdir)/doc/$(project_name)

.PHONY: all install uninstall

all:

install:
	mkdir -p "$(DESTDIR)$(bindir)/"
	$(INSTALL_PROGRAM) "$(project_name)" "$(DESTDIR)$(bindir)/$(project_name)"
	mkdir -p "$(DESTDIR)$(docdir)/"
	$(INSTALL_DATA) README.md "$(DESTDIR)$(docdir)/"

uninstall:
	$(RM) "$(DESTDIR)$(bindir)/$(project_name)"
	$(RM) -r "$(DESTDIR)$(docdir)/"
