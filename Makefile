PKG_STY = $(wildcard src/*.sty)

DESTDIR ?= $(shell kpsewhich -var-value=TEXMFHOME)
INSTALL_DIR = $(DESTDIR)/tex/latex/beamertheme-tottori

.PHONY:  install uninstall test

install: $(PKG_STY)
	@mkdir -p $(INSTALL_DIR)
	@cp $(PKG_STY) $(INSTALL_DIR)

uninstall:
	@rm $(addprefix $(INSTALL_DIR)/, $(notdir $(PKG_STY)))
	@rmdir "$(INSTALL_DIR)"

