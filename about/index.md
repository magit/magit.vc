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
porcelains.  <a class="small" href="/">(less)</a>

Staging and otherwise applying changes is one of the most important
features in a Git porcelain and here Magit outshines anything else,
including Git itself.  Git's own staging interface (<code>git add
--patch</code>) is so cumbersome that many users only use it in
exceptional cases.  In Magit staging a hunk or even just part of a
hunk is as trivial as staging all changes made to a file.

The most visible part of Magit's interface is the status buffer, which
displays information about the current repository.  Its content is
created by running several Git commands and making their output
actionable.  Among other things, it displays information about the
current branch, lists unpulled and unpushed changes and contains
sections displaying the staged and unstaged changes.  That might sound
noisy, but, since sections are collapsible, it's not.

To stage or unstage a change one places the cursor on the change and
then types <code>s</code> or <code>u</code>.  The change can be a file
or a hunk, or when the region is active (i.e. when there is a
selection) several files or hunks, or even just part of a hunk.  The
change or changes that these commands - and many others - would act on
are highlighted.

Magit also implements several other "apply variants" in addition to
staging and unstaging.  One can discard or reverse a change, or apply
it to the working tree.  Git's own porcelain only supports this for
staging and unstaging and you would have to do something like
<code>git diff ... | ??? | git apply ...</code> to discard, revert, or
apply a single hunk on the command line.  In fact that's exactly what
Magit does internally (which is what lead to the term "apply
variants").

Magit isn't just for Git experts, but it does assume some prior
experience with Git as well as Emacs.  That being said, many users
have reported that using Magit was what finally taught them what Git
it is capable off and how to use it to its fullest.  Other users
wished they had switched to Emacs sooner so that they would have
gotten their hands on Magit earlier.

While one has to know the basic features of Emacs to be able to make
full use of Magit, acquiring just enough Emacs skills doesn't take
long and is worth it, even for users who prefer other editors.  Vim
users are advised to give [Evil][evil] the "Extensible VI Layer for
Emacs", and [Spacemacs][spacemacs] an "Emacs starter-kit focused on
Evil" a try.

Magit provides a consistent and efficient Git porcelain.  After a
short learning period, you will be able to perform most of your daily
version control tasks faster than you would on the command line.  You
will likely also start using features that seemed too daunting in the
past.

Magit fully embraces Git.  It exposes many advanced features using a
simple but flexible interface instead of only wrapping the trivial
ones like many GUI clients do.  Of course Magit supports logging,
cloning, pushing, and other commands that usually don't fail in
spectacular ways; but it also supports tasks that often cannot be
completed in a single step.  Magit fully supports tasks such as
merging, rebasing, cherry-picking, reverting, and blaming by not only
providing a command to initiate these tasks but also by displaying
context sensitive information along the way and providing commands
that are useful for resolving conflicts and resuming the sequence
after doing so.

Magit wraps and in many cases improves upon at least the following Git
porcelain commands: add, am, bisect, blame, branch, checkout, cherry,
cherry-pick, clean, clone, commit, config, describe, diff, fetch,
format-patch, init, log, merge, merge-tree, mv, notes, pull, rebase,
reflog, remote, request-pull, reset, revert, rm, show, stash,
submodule, and tag.  Many more Magit porcelain commands are
implemented on top of Git plumbing commands.

[emacs]:     https://www.gnu.org/software/emacs
[evil]:      https://bitbucket.org/lyro/evil/wiki/Home
[git]:       https://git-scm.com
[spacemacs]: https://github.com/syl20bnr/spacemacs
