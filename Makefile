include config.mk

help:
	$(info make genstats        - regenerate the statistics)
	$(info make manual          - regenerate the manuals)
	$(info make manual-move-old-magit        - )
	$(info make manual-move-old-with-editor  - )
	$(info make manual-copy-new              - )
	$(info make build           - build using jekyll)
	$(info make serve           - run a local jekyll server)
	$(info make upload-dryrun   - pretend to upload to s3)
	$(info make upload          - upload to s3)
	@printf "\n"

genstats:
	@gitstats -c style=/css/stats.css -c max_authors=200 $(MAGIT_REPO) _site/stats

manual:
	@$(MAKE) -C _site/manual all

manual-move-old-magit:
	@$(MAKE) -C _site/manual move-old-magit

manual-move-old-with-editor:
	@$(MAKE) -C _site/manual move-old-with-editor

manual-copy-new:
	@$(MAKE) -C _site/manual copy-new

build:
	@jekyll build

serve:
	@jekyll serve

S3IGNORE = $(shell while read i; do echo --exclude "'$$i'" ; done < .s3ignore)

upload-dryrun:
	@aws s3 sync _site s3://magit.vc --delete $(S3IGNORE) --dryrun

upload:
	@aws s3 sync _site s3://magit.vc --delete $(S3IGNORE)
