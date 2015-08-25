.PHONY: help clean-gen serve genstats \
	master master-info master-pdf master-html master-clean \
	next next-texi next-info next-pdf next-html next-clean

help:
	$(info make all             - )
	$(info make clean           - )
	$(info make clean-gen       - )
	$(info make serve           - )
	$(info make genstats        - )
	$(info make copy-manuals    - )
	$(info make master          - )
	$(info make master-info     - )
	$(info make master-pdf      - )
	$(info make master-html     - )
	$(info make master-clean    - )
	$(info make next            - )
	$(info make next-texi       - )
	$(info make next-info       - )
	$(info make next-pdf        - )
	$(info make next-html       - )
	$(info make next-clean      - )
	@printf "\n"

include config.mk

all: next master genstats

clean: copy-manual next-clean master-clean

GENFILES  = manual/$(VERSION)/magit.info
GENFILES += manual/$(VERSION)/magit.pdf
GENFILES += manual/$(VERSION)/magit.html
GENFILES += manual/next/magit.texi
GENFILES += manual/next/magit.info
GENFILES += manual/next/magit.pdf
GENFILES += manual/next/magit.html

clean-gen: clean
	@printf "Cleaning generated...\n"
	@find manual -name 'magit_*' -exec rm '{}' ';'
	@rm -rf stats $(GENFILES)

serve:
	python -m SimpleHTTPServer

genstats:
	@$(MAKE) -C $(MAGIT_REPO) genstats

copy-manuals:
	@cp $(MAGIT_REPO)/Documentation/magit.org \
	$(MAGIT_REPO)/Documentation/magit-popup.org \
	$(MAGIT_REPO)/Documentation/with-editor.org manual

master:
	@$(MAKE) -C manual master
master-info:
	@$(MAKE) -C manual master-info
master-pdf:
	@$(MAKE) -C manual master-pdf
master-html:
	@$(MAKE) -C manual master-html
master-clean:
	@$(MAKE) -C manual master-clean

next:
	@$(MAKE) -C manual next
next-texi:
	@$(MAKE) -C manual next-texi
next-info:
	@$(MAKE) -C manual next-info
next-pdf:
	@$(MAKE) -C manual next-pdf
next-html:
	@$(MAKE) -C manual next-html
next-clean:
	@$(MAKE) -C manual next-clean
