# Copyright (C) 2015 Mark Blakeney, markb@berlios.de. This program is
# distributed under the terms of the GNU General Public License.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or any
# later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License at <http://www.gnu.org/licenses/> for more
# details.

DOC = README.md

DOCOUT = $(DOC:.md=.html)

all:
	@echo "Type make install|uninstall|start|stop|restart"

install:
	@./install.sh

uninstall:
	@./install.sh -r

force_install:
	@./install.sh -f

force_uninstall:
	@./install.sh -rf

bin:
	@./install.sh -df

stop:
	@./install.sh -s

start:
	@./install.sh -x

restart:
	@./install.sh -s
	@./install.sh -x

doc:	$(DOCOUT)

$(DOCOUT): $(DOC)
	markdown $< >$@

clean:
	rm -rf $(DOCOUT)
