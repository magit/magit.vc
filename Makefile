include config.mk

help:
	$(info make genstats        - )
	$(info make serve           - )
	@printf "\n"

genstats:
	@$(MAKE) -C $(MAGIT_REPO) genstats

serve:
	@python -m SimpleHTTPServer
