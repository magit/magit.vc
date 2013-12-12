TAG      ?= a6ed6f4e7ac47660bca637be39f36c737c5fb437
#TAG     ?= $(shell git tag --list '[0-9]*' | tail -n 1)
TAG_DESC  = $(shell git describe --tags $(TAG) 2> /dev/null)
HEAD_DESC = $(shell git describe --tags master 2> /dev/null)

MAKEINFO      ?= makeinfo
MAKEINFO_OPTS ?= --no-split

.PHONY: magit.texi master/magit.texi
all:    magit.html master/magit.html

%.html: %.texi
	@printf "Building  $@..."
	@$(MAKEINFO) $(MAKEINFO_OPTS) --html --css-include style/manual.css -o $@ $<
	@printf "done\n"

magit.texi:
	@printf "Importing $@..."
	@git show $(TAG):magit.texi > $@
	@printf "done\n"

master/magit.texi:
	@printf "Importing $@..."
	@git show master:magit.texi > $@
	@printf "done\n"

clean:
	@printf "Cleaning..."
	@rm -f  *.texi
	@printf "done\n"
