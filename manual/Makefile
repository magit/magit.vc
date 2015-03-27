include ../config.mk

CSS = /css/page.css

.PHONY: magit magit-popup with-editor clean

all:  texi html pdf

texi: magit.texi magit-popup.texi with-editor.texi
pdf:  magit.pdf  magit-popup.pdf  with-editor.pdf
html: magit magit-popup with-editor

magit: magit.texi
	@printf " GEN $@.html\n"
	@makeinfo --html --no-split --css-ref $(CSS) $<
	@printf " GEN $@/*.html\n"
	@makeinfo --html --css-ref $(CSS) $<

magit-popup: magit-popup.texi
	@printf " GEN $@.html\n"
	@makeinfo --html --no-split --css-ref $(CSS) $<
	@printf " GEN $@/*.html\n"
	@makeinfo --html --css-ref $(CSS) $<

with-editor: with-editor.texi
	@printf " GEN $@.html\n"
	@makeinfo --html --no-split --css-ref $(CSS) $<
	@printf " GEN $@/*.html\n"
	@makeinfo --html --css-ref $(CSS) $<

%.texi: %.org
	@printf " GEN $@\n"
	@$(BATCH) $< -l ox-texinfo+.el -f org-texinfo+export-to-texinfo
	@echo >> $@
	@rm $@~

%.pdf: %.texi
	@printf " GEN $@\n"
	@$(TEXI2PDF) $<
	@git clean -qfX

clean:
	@printf "Cleaning...\n"
	@rm -rf magit.pdf magit.html magit/
	@rm -rf magit-popup.pdf magit-popup.html magit-popup/
	@rm -rf with-editor.pdf with-editor.html with-editor/
