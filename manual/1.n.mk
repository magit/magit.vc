CSS = /css/page.css

.PHONY: all texi info pdf html clean

all: html pdf
pdf: magit.pdf

html: magit.texi
	@printf " GEN magit.html\n"
	@makeinfo --html --no-split --css-ref $(CSS) $<
	@printf " GEN magit/*.html\n"
	@makeinfo --html --css-ref $(CSS) $<

%.info: %.texi
	@printf " GEN $@\n"
	@$(MAKEINFO) $< -o $@

%.pdf: %.texi
	@printf " GEN $@\n"
	@$(TEXI2PDF) $<
	@git clean -qfX

clean:
	@printf "Cleaning...\n"
	@rm -rf magit.info magit.pdf magit.html magit/
