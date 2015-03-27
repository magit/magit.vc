VERSION = 1.4

SITE_LISP  ?= ~/.emacs.d/lib
MAGIT_REPO ?= $(SITE_LISP)/magit
LOAD_PATH  ?= \
  -L $(SITE_LISP)/dash \
  -L $(SITE_LISP)/org/lisp \
  -L $(SITE_LISP)/ox-texinfo+

EMACS ?= emacs
BATCH  = $(EMACS) --batch -Q $(LOAD_PATH)

MAKEINFO     ?= makeinfo
TEXI2PDF     ?= texi2pdf
TEXI2HTML    ?= texi2html
INSTALL_INFO ?= $(shell \
  hash ginstall-info 2> /dev/null\
  && printf ginstall-info\
  || printf install-info)
