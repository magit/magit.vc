VERSION = 2.7
VERSION_PREV = 2.6

SITE_LISP  ?= ~/.emacs.d/lib
MAGIT_REPO ?= $(SITE_LISP)/magit
LOAD_PATH  ?= \
  -L $(SITE_LISP)/dash \
  -L $(SITE_LISP)/org/lisp \
  -L $(SITE_LISP)/ox-texinfo+

EMACS ?= emacs
BATCH  = $(EMACS) --batch -Q $(LOAD_PATH)

TEXI2PDF ?= texi2pdf

MANUAL_CSS = /css/page.css

