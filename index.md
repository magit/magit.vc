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

Or you might prefer a [video](/screencasts) introduction.

<a href="/screenshots">
  <img class="screenshot" src="/screenshots/status.png">
</a>


<br>
<script type="text/javascript" src="/quotes/quotes.js"></script>
<script type="text/javascript">window.onload = function(){inject_quotes(); simpleCssSwitch();}</script>

<section>
  <blockquote id="quote1"></blockquote>
  <blockquote id="quote2"></blockquote>
  {% include donate-main.md %}
  <br>
</section>

# News

<!--Also update news/index.md-->
* 2024-08-14 — Forge **v0.4.0** and **v0.4.1** released
  ([announcement](https://emacsair.me/2024/08/14/forge-0.4))
* 2024-08-09 — Magit **v4.0.0** [released]({{site.relnotes}}/4.0.0.org)
  ([announcement](https://emacsair.me/2024/08/09/magit-4.0))
* 2023-11-28 — Transient **v0.5.0** released
  ([announcement](https://emacsair.me/2023/11/28/transient-0.5))
* 2023-05-10 — Transient **v0.4.0** released
  ([announcement](https://emacsair.me/2023/05/10/transient-0.4))

[More news](/news).  Not all releases are announced on my blog.
More releases are listed on the release pages for
[Magit](https://github.com/magit/magit/releases),
[Transient](https://github.com/magit/transient/releases),
[Forge](https://github.com/magit/forge/releases) and other packages.

# Documentation

* [All manuals](/manual) (for releases)
* [Magit User Manual](/manual/magit)
  ([single-page](/manual/magit.html),
   [pdf](/manual/magit.pdf))
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
  * [Statistics](/stats)
* Support
  * [Emacs Subreddit][reddit]
  * [Emacs Stackexchange][stackexchange]
  * [Github discussions][discussions]
* [Announcements on Mastodon][mastodon]
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
[Emacs Stackexchange site][stackexchange], the [Emacs Subreddit][reddit]
or [Github discussions][discussions].

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
including the backers of the 2017 crowdfunding campaign.

<video id="gource" controls poster="/assets/videos/gource-700x700.png">
  <source src="/assets/videos/gource-700x700.webm" type="video/webm">
</video>

[contrib]: https://github.com/magit/magit/blob/master/CONTRIBUTING.md
[devel]:   https://github.com/magit/magit
[issues]:  https://github.com/magit/magit/issues
[pulls]:   https://github.com/magit/magit/pulls

[authors]: /stats/magit/authors.html
[faq]:     /manual/magit/FAQ.html
[manual]:  /manual

[reddit]:        https://www.reddit.com/r/emacs
[stackexchange]: https://emacs.stackexchange.com/questions/tagged/magit
[discussions]:   https://github.com/magit/magit/discussions/4630
[mastodon]:      https://fosstodon.org/@tarsius
[wiki]:          https://github.com/magit/magit/wiki

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
