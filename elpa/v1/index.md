---
layout: default
title: Magit! A Git Porcelain inside Emacs
header: Elpa archive for obsolete v1 series
---

# The v1 series is obsolete and unmaintained

Being unmaintained means, among other things, that we won't fix any
bugs.  If you think that is wrong of us, then consider that "we" is
mostly "I", my time is limited, and that I have not used that series
myself for more that one and a half years now.  For most of that time
I actually did support the v1 series, but that has come to an end now.
For more information see the release notes for [1.4.0] and [2.1.0].

However, for your convenience, I am now making v1.4.2, the last
release in the v1 series, available from this dedicated Elpa archive.

Never-the-less **if it is at all possible, then you should instead
update to the v2 series**.  That requires at least Emacs v24.4 and Git
v1.9.4.

If these releases are not available in your distribution, then you
should look for backports.  If no backports are available, then you
should compile from source.  If you require permission to install
software, then you should ask for it.  You should only consider
installing v1 instead of v2, if, and only if, your employer forbids
that you install recent versions of Emacs and Git.  In all other cases
it would be much better to learn to install Emacs and/or Git from
source.  It's really not that hard and is a skill worth having.

Currently we do not provide any distribution specific instructions for
installing Emacs and Git, but should such instructions be contributed
by users, then they would appear [here][install-emacs]
and [here][install-git].  (Note that you could be that user who
contributes those instructions for your distribution.)

# How to install v1 if that's the only option

If you have already installed v2 (>=20150601 on Melpa) then you have
to first uninstall *magit* and *git-commit*.  Then restart Emacs.

Add the *magit-v1* archive to *package-archives*.  If you are also
using other archives, then you have to pin the *magit* package to the
*magit-v1* archive using *package-pinned-packages*.  If your Emacs
does not have that variable, then you have to install and
[config-melpa] the *package-filter* package which is available from
Melpa.

    (require 'package)
    (add-to-list 'package-archives
                 '("magit-v1" . "https://magit.vc/elpa/v1/packages/") t)
    (add-to-list 'package-pinned-packages '(magit . "magit-v1"))

[1.4.0]: https://raw.githubusercontent.com/magit/magit/master/Documentation/RelNotes/1.4.0.txt
[2.1.0]: https://raw.githubusercontent.com/magit/magit/master/Documentation/RelNotes/2.1.0.txt
[install-emacs]: https://magit.vc/manual/magit/I-am-using-an-Emacs-release-older-than-244.html
[install-git]:   https://magit.vc/manual/magit/I-am-using-a-Git-release-older-than-194.html
[config-melpa]:  https://melpa.org/#/getting-started
