include config.mk

help:
	$(info make genstats        - )
	$(info make serve           - )
	$(info make upload-dryrun   - )
	$(info make upload          - )
	@printf "\n"

genstats:
	@$(MAKE) -C $(MAGIT_REPO) genstats

serve:
	@python -m SimpleHTTPServer

S3IGNORE  = --exclude .s3ignore
S3IGNORE += $(shell while read i; do echo --exclude "'$$i'" ; done < .s3ignore)

upload-dryrun:
	@aws s3 sync . s3://magit.vc --delete $(S3IGNORE) --dryrun

upload:
	@aws s3 sync . s3://magit.vc --delete $(S3IGNORE)
