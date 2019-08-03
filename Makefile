.PHONY: install uninstall

install:
	ln -sf $(CURDIR)/tpt /usr/share/bash-completion/completions/tpt
	grep -q '^source $(CURDIR)/tpt' ~/.bashrc || echo "source $(CURDIR)/tpt" >> ~/.bashrc

uninstall:
	rm -rf /usr/share/bash-completion/completions/tpt
