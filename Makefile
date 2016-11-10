## Configuration #####################################################

DOMAIN         ?= magit.vc
PUBLIC         ?= https://$(DOMAIN)
PUBLISH_BUCKET ?= s3://$(DOMAIN)
PREVIEW_BUCKET ?= s3://preview.$(DOMAIN)
S3_DOMAIN      ?= s3-website.eu-central-1.amazonaws.com
PUBLISH_S3_URL ?= http://$(DOMAIN).$(S3_DOMAIN)
PREVIEW_S3_URL ?= http://preview.$(DOMAIN).$(S3_DOMAIN)

# local files
EXCLUDE  = ".git/*"
EXCLUDE  = ".gitignore"
EXCLUDE += "Makefile"
EXCLUDE += "magit-refcard.tex"
# from master branch
EXCLUDE += "dir/index.html"
EXCLUDE += "index.html"
# from magit repository
EXCLUDE += "magit/*"
EXCLUDE += "magit.html"
EXCLUDE += "magit.pdf"
EXCLUDE += "magit-popup/*"
EXCLUDE += "magit-popup.html"
EXCLUDE += "magit-popup.pdf"
# from with-editor repository
EXCLUDE += "with-editor/*"
EXCLUDE += "with-editor.html"
EXCLUDE += "with-editor.pdf"

SRC   = .
DST   = /manual
SYNC  = $(addprefix --exclude ,$(EXCLUDE))

## Usage #############################################################

help:
	$(info VERSION=N.M make fetch-magit)
	$(info                   - download a Magit release)
	$(info VERSION=N.M make fetch-with-editor)
	$(info                   - download a With-Editor release)
	$(info make refcard      - generate the refcard)
	$(info make preview      - upload to preview site)
	$(info make publish      - upload to production site)
	$(info make clean        - remove refcard pdf)
	$(info )
	$(info Public:  $(PUBLIC))
	$(info Preview: $(PREVIEW_S3_URL))
	$(info Publish: $(PUBLISH_S3_URL))
	@echo

## Targets ###########################################################

fetch-magit:
	@test -n "$(VERSION)"
	@mkdir -p $(VERSION)
	@aws s3 sync $(PUBLISH_BUCKET)/manual/magit/           $(VERSION)
	@aws s3 cp   $(PUBLISH_BUCKET)/manual/magit.html       $(VERSION)
	@aws s3 cp   $(PUBLISH_BUCKET)/manual/magit.pdf        $(VERSION)
	@aws s3 sync $(PUBLISH_BUCKET)/manual/magit-popup/     $(VERSION)
	@aws s3 cp   $(PUBLISH_BUCKET)/manual/magit-popup.html $(VERSION)
	@aws s3 cp   $(PUBLISH_BUCKET)/manual/magit-popup.pdf  $(VERSION)

fetch-with-editor:
	@test -n "$(VERSION)"
	@mkdir -p $(VERSION)
	@aws s3 sync $(PUBLISH_BUCKET)/manual/magit/           $(VERSION)
	@aws s3 cp   $(PUBLISH_BUCKET)/manual/magit.html       $(VERSION)
	@aws s3 cp   $(PUBLISH_BUCKET)/manual/magit.pdf        $(VERSION)
	@aws s3 sync $(PUBLISH_BUCKET)/manual/magit-popup/     $(VERSION)
	@aws s3 cp   $(PUBLISH_BUCKET)/manual/magit-popup.html $(VERSION)
	@aws s3 cp   $(PUBLISH_BUCKET)/manual/magit-popup.pdf  $(VERSION)

refcard: magit-refcard.pdf

%.pdf: %.tex
	@echo "Generating $@..."
	@pdflatex $< > /dev/null
	@rm magit-refcard.aux magit-refcard.log

preview: refcard
	@echo "Uploading to $(PREVIEW_BUCKET)..."
	@aws s3 sync $(SRC) $(PREVIEW_BUCKET)$(DST) --delete $(SYNC)

publish: refcard
	@echo "Uploading to $(PUBLISH_BUCKET)..."
	@aws s3 sync $(SRC) $(PUBLISH_BUCKET)$(DST) --delete $(SYNC)

clean:
	@echo "Cleaning..."
	@rm -f magit-refcard.pdf
