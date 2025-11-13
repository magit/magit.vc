## Configuration #####################################################

DOMAIN = magit.vc

RCLONE      ?= rclone
RCLONE_ARGS ?= -v

SERVE_ARGS = -P 4100

FONTS = Noto+Sans:400,400i,700,700i|Noto+Serif:400,400i,700,700i

## Usage #############################################################

help:
	$(info make build            - Build using jekyll)
	$(info make serve            - Run a local jekyll server)
	$(info make publish-indices  - Publish indices to fastmail)
	$(info make update-fonts     - Download updated fonts)
	$jinfo make clean            - Remove build directory)
	@true

## Build #############################################################

build:
	@jekyll build

serve:
	@jekyll serve $(SERVE_ARGS)

## Publish ###########################################################

DOCS_DOMAIN = docs.$(DOMAIN)
STAT_DOMAIN = stats.$(DOMAIN)
DOCS_TARGET = $(subst .,_,$(DOCS_DOMAIN)):
SNAP_TARGET = $(subst .,_,$(DOCS_DOMAIN)):devel
STAT_TARGET = $(subst .,_,$(STAT_DOMAIN)):

publish-indices: build
	@echo "Publishing indices to $(DOCS_DOMAIN)..."
	@$(RCLONE) copy $(RCLONE_ARGS) manual/magit-refcard.pdf    $(DOCS_TARGET)
	@$(RCLONE) copy $(RCLONE_ARGS) _site/manual/dir/index.html $(DOCS_TARGET)/dir
	@$(RCLONE) copy $(RCLONE_ARGS) _site/manual/dir.html       $(DOCS_TARGET)
	@$(RCLONE) copy $(RCLONE_ARGS) _site/manual/index.html     $(DOCS_TARGET)
	@$(RCLONE) copy $(RCLONE_ARGS) _site/manual/dir/index.html $(SNAP_TARGET)/dir
	@$(RCLONE) copy $(RCLONE_ARGS) _site/manual/dir.html       $(SNAP_TARGET)
	@$(RCLONE) copy $(RCLONE_ARGS) _site/manual/index.html     $(SNAP_TARGET)
	@echo "Publishing indices to $(STAT_DOMAIN)..."
	@$(RCLONE) copy $(RCLONE_ARGS) _site/stats/index.html      $(STAT_TARGET)

# Instead of this, we publish using Github Pages.
# APEX_TARGET  = $(subst .,_,$(DOMAIN)):
# publish:
# 	@if test $$(git symbolic-ref --short HEAD) = main; \
# 	then echo "Publishing page to $(DOMAIN)..."; \
# 	else echo "ERROR: Only main can be published"; exit 1; fi
# 	@$(RCLONE) sync $(RCLONE_ARGS) _site $(APEX_TARGET)

## Miscellaneous #####################################################

update-fonts:
	@mkdir -p assets/fonts
	@cd assets/fonts; google-font-download -o ../font.css -f woff2,woff -u \
	"https://fonts.googleapis.com/css?family=$(FONTS)"
	@cd assets; sed -i -e "s:url('Noto:url('/assets/fonts/Noto:" font.css

clean:
	@echo "Cleaning..."
	@rm -rf _site
