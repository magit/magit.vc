---
layout: default
title: A Git Porcelain inside Emacs
logo: big
home: true
---

Magit is a complete text-based user interface to [Git].  It fills the
glaring gap between the Git command-line interface and various GUIs,
letting you perform trivial as well as elaborate version control tasks
with just a couple of mnemonic key presses.  Magit looks like a
prettified version of what you get after running a few Git commands
but in Magit every bit of visible information is also actionable to an
extent that goes far beyond what any Git GUI provides and it takes
care of automatically refreshing this output when it becomes outdated.
In the background Magit just runs Git commands and if you wish you can
see what exactly is being run, making it possible for you to learn
the `git` command-line by using Magit.

Using Magit for a while will make you a more effective version control
user.  Magit supports and streamlines the use of Git features that
most users and developers of other Git clients apparently thought
could not be reasonably mapped to a non-command-line interface.  Magit
is both faster and more intuitive than either the command line or any
GUI and these holds for both Git beginners and experts alike.

<br>
<img class="clear" src="/assets/L.png" align="top" style="float: left;">
<b>
  If you are new to Magit, then either one of the following two
  articles should help understanding how it differs from other Git
  clients.  Click the triangles to expand brief summaries.
<b>

<details>
  <summary>
  <a href="https://emacsair.me/2017/09/01/magit-walk-through">Visual Magit walk-through</a>
  </summary>

  If you are completely new to Magit, then this article is a good
  visual introduction.

  Almost everything that you see in Magit can be acted on by pressing
  some key, but that's not obvious from just seeing how Magit looks.
  The screenshots and accompanying text of this article explain how to
  perform a variety of actions on Magit's output.
  <br>
</details>

<details>
  <summary>
  <a href="https://emacsair.me/2017/09/01/the-magical-git-interface">Magit, the magical Git interface</a>
  </summary>

  Magit differs significantly from other Git interfaces, and its
  advantages are not immediately obvious simply from looking at a few
  screenshots as presented in the preceding article.

  This article discusses Magit's properties in somewhat more abstract
  terms.
</details>

<a href="/screenshots">
  <img class="screenshot" src="/screenshots/status.png">
</a>


<br>
<script type="text/javascript" src="/quotes/quotes.js"></script>
<script type="text/javascript">window.onload = function(){inject_quotes(); simpleCssSwitch();}</script>

<section>
  <blockquote id="quote1"></blockquote>
  <blockquote id="quote2"></blockquote>
  {% markdown donate-main.md %}
  <br>
</section>

# News

<!--Also update news/index.md-->
* 20210801 — Magit **v3.2.0** [released]({{ site.relnotes }}/3.2.0.org)
  ([announcement](https://emacsair.me/2021/08/01/magit-3.2))
* 20210701 — Magit **v3.1.0** [released]({{ site.relnotes }}/3.1.0.org)
  ([announcement](https://emacsair.me/2021/07/01/magit-3.1))
* 20210425 — Forge **v0.2.0** released
  ([announcement](https://emacsair.me/2021/05/25/forge-0.2))
* 20210525 — Magit **v3.0.0** [released]({{ site.relnotes }}/3.0.0.org)
  ([announcement](https://emacsair.me/2021/05/25/magit-3.0))
* 20210221 — Transient **v0.3.0** released
  ([announcement](https://emacsair.me/2021/02/21/transient-0.3))
* 20200226 — Transient **v0.2.0** released
  ([announcement](https://emacsair.me/2020/02/26/transient-0.2))
* 20200123 — Magit-Section as a stand-alone package
  ([announcement](https://emacsair.me/2020/01/23/magit-section))
* 20190214 — Transient **v0.1.0** released
  ([announcement](https://emacsair.me/2019/02/14/transient-0.1))
* 20181219 — Forge **v0.1.0** released
  ([announcement](https://emacsair.me/2018/12/19/forge-0.1))

[All news](/news).

# Documentation

* [All manuals](/manual) (for releases)
* [Magit User Manual](/manual/magit)
  ([single-page](/manual/magit.html),
   [pdf](/manual/magit.pdf),
   [epub](/manual/magit.epub))
  * [Installation](/manual/magit/Installation.html)
  * [FAQ](/manual/magit/FAQ.html)
    <img class="clear" src="/assets/R.png" align="top">
* [Forge User Manual](/manual/forge)
  ([single-page](/manual/forge.html),
   [pdf](/manual/forge.pdf))
* [Ghub User and Developer Manual](/manual/ghub)
  ([single-page](/manual/ghub.html),
   [pdf](/manual/ghub.pdf))
* [Magit-Section Developer Manual](/manual/magit-section)
  ([single page](/manual/magit-section.html),
  [pdf](/manual/magit-section.pdf))
* [Transient User and Developer Manual](/manual/transient)
  ([single-page](/manual/transient.html),
   [pdf](/manual/transient.pdf))
* [With-Editor User Manual](/manual/with-editor)
  ([single-page](/manual/with-editor.html),
   [pdf](/manual/with-editor.pdf))
* [Magit Reference Card](/manual/magit-refcard.pdf)
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
* [Screenshots](https://emacsair.me/2017/09/01/magit-walk-through)
* [Screencasts](/screencasts)
* [User quotes](/quotes)
* [Blog posts](/blogs)

# Support

When something doesn't work as expected then please first see the
[FAQ][faq].  Then also try the list of [open issues][issues] and use
the search box at the top of that page to find older related issues.
You should also consult the [manual][manual] and ask a general-purpose
search engine.

If that doesn't answer your question, then ask for help on the
**[Emacs Stackexchange site][forum]**, the [mailing list][list], or
the [Gitter chat][chat].

Please do NOT use the GitHub issue tracker for support requests.
We only use it for feature requests and bug reports.

# Credits

Magit was started by [Marius Vollmer][marius], and is now maintained
by [Jonas Bernoulli][jonas], [Kyle Meyer][kyle], and
[Noam Postavsky][noam].  Former maintainers are
[Nicolas Dudebout][nicolas], [Peter J. Weisberg][peter],
[Phil Jackson][phil], [Rémi Vanicat][remi], and [Yann Hodique][yann].
Many more people have [contributed code][authors] and suggested
features.

Over the years a lot of people supported development financially,
including the [1987 backers][backers] of the 2017 crowdfunding
campaign.

<video id="gource" controls poster="/assets/videos/gource-700x700.png">
  <source src="/assets/videos/gource-700x700.webm" type="video/webm">
</video>

[backers]: https://github.com/magit/magit/blob/master/Documentation/BACKERS.md
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

[Emacs]:   https://www.gnu.org/software/emacs
[Git]:     https://git-scm.com

[jonas]:   https://emacsair.me
[kyle]:    https://github.com/kyleam
[marius]:  https://github.com/mvollmer
[nicolas]: http://dudebout.com
[noam]:    https://github.com/npostavs
[peter]:   https://github.com/pjweisberg
[phil]:    https://github.com/philjackson
[remi]:    https://github.com/vanicat
[yann]:    http://www.hodique.info

[porcelain]: https://stackoverflow.com/questions/6976473
