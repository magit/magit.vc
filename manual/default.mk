PKG       = magit
PACKAGES  = magit magit-popup git-commit

TEXIPAGES = $(addsuffix .texi,$(filter-out git-commit,$(PACKAGES)))
INFOPAGES = $(addsuffix .info,$(filter-out git-commit,$(PACKAGES)))
HTMLFILES = $(addsuffix .html,$(filter-out git-commit,$(PACKAGES)))
HTMLDIRS  = $(filter-out git-commit,$(PACKAGES))
PDFFILES  = $(addsuffix .pdf,$(filter-out git-commit,$(PACKAGES)))

EMACSBIN ?= emacs
RMDIR    ?= rm -rf

INSTALL_INFO     ?= $(shell command -v ginstall-info || printf install-info)
MAKEINFO         ?= makeinfo
MANUAL_HTML_ARGS ?= --css-ref /assets/page.css

ELISP_DIR = ~/.emacs.d/lib/

ifndef LOAD_PATH
LOAD_PATH  = -L $(ELISP_DIR)/dash
LOAD_PATH += -L $(ELISP_DIR)/magit/lisp
LOAD_PATH += -L $(ELISP_DIR)/with-editor
endif

ifndef ORG_LOAD_PATH
ORG_LOAD_PATH  = $(LOAD_PATH)
ORG_LOAD_PATH += -L $(ELISP_DIR)/org/lisp
ORG_LOAD_PATH += -L $(ELISP_DIR)/org/contrib/lisp
ORG_LOAD_PATH += -L $(ELISP_DIR)/ox-texinfo+
endif

##  ##################################################################

.PHONY: texi

## Build #############################################################

ORG_ARGS  = --batch -Q $(ORG_LOAD_PATH)
ORG_ARGS += -l magit-utils.el -l org-man -l ox-extra -l ox-texinfo+.el
ORG_EVAL  = --eval "(ox-extras-activate '(ignore-headlines))"
ORG_EVAL += --eval "(setq indent-tabs-mode nil)"
ORG_EVAL += --eval "(setq org-src-preserve-indentation nil)"
ORG_EVAL += --funcall org-texinfo-export-to-texinfo

all: info html pdf

texi: $(TEXIPAGES)
info: $(INFOPAGES) dir
html: $(HTMLFILES) html-dir
pdf:  $(PDFFILES)

%.texi: %.org
	@VERSION=$(VERSION) $(EMACSBIN) $(ORG_ARGS) $< $(ORG_EVAL)
	@printf "\n" >> $@
	@rm -f $@~

%.info: %.texi
	@printf "Generating $@\n"
	@$(MAKEINFO) --no-split $< -o $@

dir: magit.info magit-popup.info
	@printf "Generating dir\n"
	@echo $^ | xargs -n 1 $(INSTALL_INFO) --dir=$@

%.html: %.texi
	@printf "Generating $@\n"
	@$(MAKEINFO) --html --no-split $(MANUAL_HTML_ARGS) $<
	@../fixup-html.sh $@

html-dir: $(TEXIFILES)
	@printf "Generating magit/*.html\n"
	@$(MAKEINFO) --html $(MANUAL_HTML_ARGS) magit.texi
	@../fixup-html.sh magit
	@printf "Generating magit-popup/*.html\n"
	@$(MAKEINFO) --html $(MANUAL_HTML_ARGS) magit-popup.texi
	@../fixup-html.sh magit-popup

%.pdf: %.texi
	@printf "Generating $@\n"
	@texi2pdf --clean $< > /dev/null

## Clean #############################################################

clean:
	@printf "Cleaning manual/$(VERSION)/*...\n"
	@$(RMDIR) dir $(TEXIPAGES) $(INFOPAGES) $(HTMLFILES) $(HTMLDIRS) $(PDFFILES)

## Release management ################################################

DOMAIN         ?= magit.vc
CFRONT_DIST    ?= E2LUHBKU1FBV02
PUBLISH_BUCKET ?= s3://$(DOMAIN)
PREVIEW_BUCKET ?= s3://preview.$(DOMAIN)
PUBLISH_URL    ?= http://$(DOMAIN).s3-website.eu-central-1.amazonaws.com
PREVIEW_URL    ?= http://preview.$(DOMAIN).s3-website.eu-central-1.amazonaws.com

preview: html html-dir pdf
	@printf "Uploading manuals...\n"
	@aws s3 sync magit            $(PREVIEW_BUCKET)/manual/$(VERSION)/magit/
	@aws s3 cp   magit.html       $(PREVIEW_BUCKET)/manual/$(VERSION)/
	@aws s3 cp   magit.pdf        $(PREVIEW_BUCKET)/manual/$(VERSION)/
	@aws s3 sync magit-popup      $(PREVIEW_BUCKET)/manual/$(VERSION)/magit-popup/
	@aws s3 cp   magit-popup.html $(PREVIEW_BUCKET)/manual/$(VERSION)/
	@aws s3 cp   magit-popup.pdf  $(PREVIEW_BUCKET)/manual/$(VERSION)/
	@printf "Uploaded to $(PREVIEW_URL)/manual/$(VERSION)/\n"

publish: html html-dir pdf
	@printf "Uploading manuals...\n"
	@aws s3 sync magit            $(PUBLISH_BUCKET)/manual/$(VERSION)/magit/
	@aws s3 cp   magit.html       $(PUBLISH_BUCKET)/manual/$(VERSION)/
	@aws s3 cp   magit.pdf        $(PUBLISH_BUCKET)/manual/$(VERSION)/
	@aws s3 sync magit-popup      $(PUBLISH_BUCKET)/manual/$(VERSION)/magit-popup/
	@aws s3 cp   magit-popup.html $(PUBLISH_BUCKET)/manual/$(VERSION)/
	@aws s3 cp   magit-popup.pdf  $(PUBLISH_BUCKET)/manual/$(VERSION)/
	@printf "Uploaded to $(PUBLISH_URL)/manual/$(VERSION)/\n"
	@printf "Generating CDN invalidation\n"
	@aws cloudfront create-invalidation \
	--distribution-id $(CFRONT_DIST) --paths "/manual/$(VERSION)/*" > /dev/null
