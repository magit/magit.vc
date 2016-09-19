---
layout: default
title: Magit! A Git Porcelain inside Emacs
header: A Git Porcelain inside Emacs
---

Magit is an interface to the version control system [Git][git],
implemented as an [Emacs][emacs] package.  Magit aspires to be a
complete Git porcelain.  While we cannot (yet) claim that Magit wraps
and improves upon each and every Git command, it is complete enough to
allow even experienced Git users to perform almost all of their daily
version control tasks directly from within Emacs.  While many fine Git
clients exist, only Magit and Git itself deserve to be called
porcelains.  <a class="small" href="/about">(more)</a>

<p><img class="screenshot" src="/img/shot/top.png"></p>

<script type="text/javascript" src="/quotes/quotes.js"></script>
<script type="text/javascript">window.onload = inject_quotes;</script>
<section>
  <blockquote id="quote1"></blockquote>
  <blockquote id="quote2"></blockquote>
  <div id="donate">
    Please consider supporting development using
    <a href="/donations">PayPal, Payoneer, Patreon, Gratipay,
    Flattr, Bountysource, Coinbase, or Bitcoin.</a>
    &mdash; <i>Thank you! &lt;3</i>
  </div>
</section>

# News

* 20160821 &mdash; Magit **v2.8.0** [released]({{ site.relnotes }}/2.8.0.txt)
  ([announcement](https://emacsair.me/2016/08/21/magit-2.8))
* 20160519 &mdash; Magit **v2.7.0** [released]({{ site.relnotes }}/2.7.0.txt)
  ([announcement](https://emacsair.me/2016/05/19/magit-2.7))
* 20160425 &mdash; Magit **v2.6.2** [released]({{ site.relnotes }}/2.6.2.txt)
* 20160414 &mdash; Magit **v2.6.1** [released]({{ site.relnotes }}/2.6.1.txt)
* 20160329 &mdash; Magit **v2.6.0** [released]({{ site.relnotes }}/2.6.0.txt)
  ([announcement](https://emacsair.me/2016/03/29/magit-2.6))
* 20160130 &mdash; Magit **v2.5.0** [released]({{ site.relnotes }}/2.5.0.txt)
  ([announcement](https://emacsair.me/2016/02/10/magit-2.5))
* 20160119 &mdash; Magit **v2.4.1** [released]({{ site.relnotes }}/2.4.1.txt)
* 20160118 &mdash; Magit **v2.4.0** [released]({{ site.relnotes }}/2.4.0.txt)
  ([announcement](https://emacsair.me/2016/01/18/magit-2.4))
* 20151111 &mdash; Magit **v2.3.1** [released]({{ site.relnotes }}/2.3.1.txt)
* 20151028 &mdash; Magit **v2.3.0** [released]({{ site.relnotes }}/2.3.0.txt)
  ([announcement](https://emacsair.me/))
* 20150919 &mdash; Provide an [Elpa archive](/elpa/v1) for obsolete **v1.4.2**.
* 20150903 &mdash; Magit **v2.2.2** [released]({{ site.relnotes }}/2.2.2.txt)
* 20150824 &mdash; Magit **v2.2.1** [released]({{ site.relnotes }}/2.2.1.txt)
* 20150816 &mdash; Magit **v2.2.0** [released]({{ site.relnotes }}/2.2.0.txt)
* 20150701 &mdash; Magit **v2.1.0** [released]({{ site.relnotes }}/2.1.0.txt)

# Documentation

* [All manuals](/manual)
  (for older releases and development snapshots)
* [Magit User Manual](/manual/magit#Top)
  ([single-page](/manual/magit.html#Top),
   [pdf](/manual/magit.pdf),
   [org]({{ site.rawgithub }}/magit/master/Documentation/magit.org))
  * [Installation](/manual/magit/Installation.html)
  * [FAQ](/manual/magit/FAQ.html)
    <img src="/img/R.png" align="top">
* [Magit-Popup User Manual](/manual/magit-popup#Top)
  ([single-page](/manual/magit-popup.html#Top),
   [pdf](/manual/magit-popup.pdf),
   [org]({{ site.rawgithub }}/magit/master/Documentation/magit-popup.org))
* [With-Editor User Manual](/manual/with-editor#Top)
  ([single-page](/manual/with-editor.html#Top),
   [pdf](/manual/with-editor.pdf),
   [org]({{ site.rawgithub }}/with-editor/master/with-editor.org))
* [Magit Reference Card](/manual/magit-refcard.pdf)
* [Screenshots](/screenshots)
* [Wiki][wiki]

# Resources

* [Development][devel]
  * [Pull requests][pulls]
  * [Issue tracker][issues]
  * [Statistics](/stats/activity.html)
* Support
  * [Magit tag on the Emacs Stackexchange][forum]
  * [Mailing list][list]
  * [Gitter chat][chat]
* [Announcements on Twitter][twitter]

# Support

**When something doesn't work as expected then please first see the
[FAQ][faq].**  Then also try the list of [open issues][issues] and use
the search box at the top of that page to find older related issues.
You should also consult the [manual][manual] and ask a general-purpose
search engine.

If that doesn't answer your question, then ask for help on the
**[Emacs Stackexchange site][forum]**, the [mailing list][list], or
the [Gitter chat][chat].

**Please do NOT use the GitHub issue tracker for support requests.**
**We only use it for feature requests and bug reports.**

# Credits

Magit was started by [Marius Vollmer][marius], and is now maintained
by [Jonas Bernoulli][jonas], [Kyle Meyer][kyle], and
[Noam Postavsky][noam].  Former maintainers are
[Nicolas Dudebout][nicolas], [Peter J. Weisberg][peter],
[Phil Jackson][phil], [Rémi Vanicat][remi], and [Yann Hodique][yann].
Many more people have [contributed code][authors] and suggested
features.

[contrib]: https://github.com/magit/magit/blob/master/CONTRIBUTING.md
[devel]:   https://github.com/magit/magit
[issues]:  https://github.com/magit/magit/issues
[pulls]:   https://github.com/magit/magit/pulls

[authors]: https://magit.vc/stats/authors.html
[faq]:     https://magit.vc/manual/magit/FAQ.html
[manual]:  https://magit.vc/manual

[chat]:    https://gitter.im/magit/magit
[forum]:   https://emacs.stackexchange.com/questions/tagged/magit
[list]:    https://groups.google.com/forum/?fromgroups#!forum/magit
[twitter]: https://twitter.com/magit_emacs
[wiki]:    https://github.com/magit/magit/wiki

[emacs]:   https://www.gnu.org/software/emacs
[git]:     https://git-scm.com

[jonas]:   https://emacsair.me
[kyle]:    https://github.com/kyleam
[marius]:  https://github.com/mvollmer
[nicolas]: http://dudebout.com
[noam]:    https://github.com/npostavs
[peter]:   https://github.com/pjweisberg
[phil]:    https://github.com/philjackson
[remi]:    https://github.com/vanicat
[yann]:    http://www.hodique.info
