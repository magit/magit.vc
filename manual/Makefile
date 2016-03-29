include ../config.mk

.PHONY: help move-old copy-new magit magit-popup with-editor clean

help:
	$(info make move-old        - )
	$(info make copy-new        - )
	$(info make all             - )
	@printf "\n"

all:  texi html pdf

texi: magit.texi magit-popup.texi with-editor.texi
pdf:  magit.pdf  magit-popup.pdf  with-editor.pdf magit-refcard.pdf
html: magit magit-popup with-editor

move-old:
	@mkdir $(VERSION_PREV)
	mv -v magit magit-popup with-editor $(VERSION_PREV)
	mv -v magit.html magit.org magit.pdf magit.texi $(VERSION_PREV)
	mv -v magit-popup* with-editor* $(VERSION_PREV)

copy-new:
	@cp ~/.emacs.d/lib/magit/Documentation/*.org .
	@cp ~/.emacs.d/lib/with-editor/with-editor.org .

magit: magit.texi
	@printf " GEN $@.html\n"
	@makeinfo --html --no-split --css-ref $(MANUAL_CSS) $<
	@$(BATCH) --eval "(progn\
	(find-file \"magit.html\")\
	(goto-char (point-min))\
	(re-search-forward \"^<body.+\")\
	(insert-file-contents \"fixup.html\")\
	(save-buffer 0))"
	@printf " GEN $@/*.html\n"
	@makeinfo --html --css-ref $(MANUAL_CSS) $<

magit-popup: magit-popup.texi
	@printf " GEN $@.html\n"
	@makeinfo --html --no-split --css-ref $(MANUAL_CSS) $<
	@printf " GEN $@/*.html\n"
	@makeinfo --html --css-ref $(MANUAL_CSS) $<

with-editor: with-editor.texi
	@printf " GEN $@.html\n"
	@makeinfo --html --no-split --css-ref $(MANUAL_CSS) $<
	@printf " GEN $@/*.html\n"
	@makeinfo --html --css-ref $(MANUAL_CSS) $<

%.texi: %.org
	@printf " GEN $@\n"
	@$(BATCH) $< -l ox-texinfo+.el -f org-texinfo+export-to-texinfo
	@echo >> $@
	@rm -f $@~

magit-refcard.pdf: magit-refcard.tex
	@printf " GEN $@\n"
	@pdflatex magit-refcard.tex > /dev/null

%.pdf: %.texi
	@printf " GEN $@\n"
	@$(TEXI2PDF) $<
	@git clean -qfX

clean:
	@printf "Cleaning...\n"
	@rm -rf magit.pdf magit.html magit/
	@rm -rf magit-popup.pdf magit-popup.html magit-popup/
	@rm -rf with-editor.pdf with-editor.html with-editor/
	@rm -rf magit-refcard.pdf
