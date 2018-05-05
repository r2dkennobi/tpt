.PHONY: install uninstall

install:
	ln -sf $(CURDIR)/tpt /usr/share/bash-completion/completions/tpt
	ln -sf $(CURDIR)/tpt /usr/local/bin/tpt

uninstall:
	rm -rf /usr/share/bash-completion/completions/tpt
	rm -rf /usr/local/bin/tpt
