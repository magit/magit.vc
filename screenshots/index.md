---
layout: default
title: A visual walk-through
---

Magit is an interface to the version control system [Git][git],
implemented as an [Emacs][emacs] package.  Magit aspires to be a
complete Git porcelain.  While we cannot (yet) claim that Magit wraps
and improves upon each and every Git command, it is complete enough to
allow even experienced Git users to perform almost all of their daily
version control tasks directly from within Emacs.  While many fine Git
clients exist, only Magit and Git itself deserve to be called
porcelains.  <a class="small" href="/about">(more)</a>

# About this page

Almost everything you see in a Magit buffer can be acted on by
pressing some key but that's not obvious from just seeing how Magit
looks, so the screenshots are accompanied by text explaining how what
you see can be used to perform a variety of actions.

Regardless of where in a Magit buffer you are, you can always show
more details about (or an alternative view of) the thing at point
*without* having to type or copy-paste any information to feed it to
some command, as you often would have to do on the command line.

*If you came here for images, not a wall of text, then fear not,
further down there are more images and less text.  And of course you
can also just scroll through and ignore the text.*

# Other resources

If you came here for *moving pictures*, then check out
the [screencasts](/screencasts).

Eventually you might also want to consult
the [manual](/manual/magit#Top).  It is quite a useful resource if you
are sufficiently proficient in both Git and Emacs. If that's not the
case yet, then stay here for now.

And if any of these resources whet your appetite but you are not an
Emacs user and are not sure how much Emacs you have to know to be able
to use Magit and how long it would take to learn just enough to become
productive without getting stuck in other parts of Emacs, then you
should read <del>this</del>. [Unfortunately the "just enough Emacs to
use Magit" tutorial does not exist yet. Meanwhile you might want to
try Emacs' interactive tutorial. Start `emacs` and then type
<i>Control+h</i> and then <i>t</i>.]

# The status buffer

The status buffer, which can be shown while inside a Git repository by
typing <i>C-x g</i> (<i>Control+x</i> followed by <i>g</i>), is
Magit's equivalent of typing `git status` in a shell.  It shows a
quick overview of the status of the current repository.

![](/screenshots/status.png)

As you can see, Magit shows more information than Git.  On the command
line you would have to also use `git diff`, `git diff --cached`, `git
log --oneline origin/master..`, and `git log --oneline
..origin/master` and a few other commands to get the same information.

## Other Emacs themes

Many themes exist for Emacs.  Throughout this guide we use
the [Solarized light][solarized] theme, but here is how the status
buffer looks when using some other popular themes:

### Solarized dark
![](/screenshots/status-solarized-dark.png)
[Homepage][solarized]

### Zenburn
![](/screenshots/status-zenburn.png)
[Homepage][zenburn]

### Light Emacs default
![](/screenshots/status-light-default.png)

### Dark Emacs default
![](/screenshots/status-dark-default.png)

# Hiding details

You might have noticed that some diff hunks, those for `README.md`,
are not shown.  That's because the respective sections have been
collapsed.  You can collapse diff sections and any other section
(which are larger than a single line) by moving the cursor into it and
then pressing <I>TAB</I>.

Note that the current section is highlighted by changing the
background color, so that you always know the extend of the current
section.  If you moved up one line then "Unpulled from origin/master"
would become the current section and the current line as well as all
the commits that follow would be highlighted, i.e. all commits that
have not been pulled from `origin/master` yet.

If you don't currently need to know any details about the unpulled
commits, then you could now type <I>TAB</I>.  After doing so you still
see the name of the upstream branch and how many commits it is ahead
of `master`, but the details, i.e. the individual commits, are hidden.

If you want to see them just type <I>TAB</I> again; on the command
line you would have to type something like `git log --oneline
..@{upstream}`.

In Magit's status buffer you can always show as much or little as
currently appropriate without having to remember both the command that
shows little or much information.  Instead you can temporally hide or
show details as needed by pressing a single key.

After hiding as much as possible you would see this instead:

![](/screenshots/status-hidden.png)

Or you might want to see a little more than that, e.g.:

![](/screenshots/status-more.png)

# Status is automatically updated

*If you use Emacs to edit and save a file which is located inside the
repository or if you use Magit to perform some action such as staging
a change, then the status buffer is automatically updated.*

And if you change something outside of Emacs, then you can press
<i>g</i> to refresh the status buffer or <i>G</i> to refresh all Magit
buffers.

# Acting on what you see

*A major advantage Magit has over Git on the command line is that
nearly everything you see in a Magit buffer can be acted on.  Hiding
and showing a section is just one example of that.*

Beside <I>TAB</I>, another key that works nearly everywhere is
<I>RET</I> (<i>return</i>).  It shows a more detailed view of the
thing at point, be that a commit, branch, diff, hunk, stash, ...

# Commit details

For example if you type <I>RET</I> while the cursor is on a commit,
then the commit details are shown including the commit message and the
diff.

![](/screenshots/commit-top.png)

In this case the diff does not completely fit into the window.  You
could hide some sections - the metadata, commit, and diffstat at the
top - to bring the complete diff into view, or you could move down a
few sections to view the rest of the diff.

![](/screenshots/commit-bottom.png)

The basic keys movement keys are <i>C-p</i> to move up one section,
and <i>C-n</i> to move down one section.  <i>M-p</i>
(i.e. <i>Meta+p</i>, also commonly known as <i>Alt+p</i>) and
<i>M-n</i> would move to the previous or next section on the same
level as the current section.  The latter two commands can be used to
navigate Magit buffers more quickly by skipping child sections,
e.g. you could jump from one file to another without having to step
through the hunks of the first.

# Beyond the default action

Or if you were only interested in the diff but not the commit message
in the first place, you could have typed <i>d d</i> (<i>d</i> by
itself and then <i>d</i> again) in the status buffer instead of
<I>RET</I>.

But you already pressed <I>RET</I>, now what?  Type <i>q</i> to quit
(i.e. hide) the current Magit buffer, in this case the commit buffer,
to go back to the previous buffer (more precisely the previous window
configuration).  In this case that would take you back to the status
buffer.

So while <I>RET</I> performs the most likely action for the section by
showing a focused more detailed view of the thing at point, there are
many other keys which perform other, equally useful actions.  There is
<i>d</i> to show a diff, <i>l</i> to show a log, and dozens more, some
of which will be mentioned below.

# Invoking Git commands using popups

If the cursor is on the thing you want to act on, then it is very
convenient that many commands default to acting on that thing.  But
sometimes you *do* want to act on some other thing. It might be
inconvenient to first having to move to its representation in the
current buffer, or the thing you want to act on might not even be
present in the current buffer.  Many commands therefore also allow you
to act on some other thing.

Above we pressed <i>d</i> twice to show the diff for the commit at
point.  Pressing <i>d</i> just once actually does something by itself,
it shows the "diff popup", which you can see below.

![](/screenshots/popup-diff.png)

The window is split into two panes.  (Note that in Emacs, which
predates window systems, one would say the *frame* is split into two
*windows*.) The pane at the top still shows the status buffer, while
the pane at the bottom shows the diff popup.

The diff popup shows some actions at the bottom and some arguments,
which you know from your command line use of Git, at the top.

Previously we pressed <i>d</i> again.  That causes the popup
buffer/window to disappear and the "dwim" (do what I mean) diff
variant to be invoked.  As with most dwim variant, this particular one
acts on the thing at point. But alternatively you could press <i>s</i>
to show the index, for example.

Or you might want to show the diff for an arbitrary range, in which
case you would press <i>r</i>.  After doing so you can type the range
with completion:

![](/screenshots/diff-range.png)

# Popup arguments

Many popups do not only offer actions, but also allow users to set
arguments which will then be used when the invoked action calls Git.

In the diff popup, for example, one can enable the use of the
`--function-context` argument by typing <i>- f</i> before invoking an
action.  When an argument takes a value, then that is read from the
user, when appropriate with completion.

Usually arguments are just used ones, when you later enter the same
popup again, then it is not enabled anymore, but it is possible to
save the arguments you want to be used by default.

To do so enter the popup, set the arguments as desired, and then
instead of invoking an action, type <i>C-c C-c</i> to save them as the
default for the current popup.  These settings persist between Emacs
sessions.

<i>C-c C-c</i> is only one of the commands that is available in all
popups.  To show them all, type <i>C-t</i>.

![](/screenshots/popup-common.png)

# Popups vs. direct commands

Many Magit commands are invoked by first showing the available
variants and then picking one of those variants.  For many, but not
all, popups it is possible to press the same key twice to invoke the
most common variant, often a dwim variant.

But there are also many commands which are not implemented using such
a popup.  We have seen the hide/show command (<I>TAB</I>) and the
visit (<I>RET</I>) command so far.  Other such commands are staging
(<i>s</i>) and unstaging (<i>u</i>), which always act on the file or
hunk at point.  These and similar commands will be discussed below.

# The popup of popups

There are many popups but, at least for the most commonly used once,
you will quickly learn the keys you have to press because they are
mnemonic.  But until then, or when you need to do something you rarely
do, then the "popup of popups" comes to the rescue.  Show it by typing
<i>?</i>.

![](/screenshots/popup-popup.png)

# Staging changes

Magit makes it very simple to stage and later commit only some
changes, while leaving other changes in the working tree, e.g. to
commit them separately.

On the command line you have to invoke special staging and unstaging
sessions using `git add --patch` or `git reset --patch`, which is
quite cumbersome as you have to go through all the available hunks one
by one and in order.

This is an area where it is most useful that Magit allows acting on
all things you can see.  To stage only the `-59,7 +60,7` hunk you
would move there and simply press <i>s</i>, without having to first tell
Git that you don't want to stage `-45,13 +45,14` and then also that
you don't want to stage `-69,7 +70,7`.

![](/screenshots/stage-before.png)

After you have done so, the buffer automatically updates and the
cursor is moved to the next hunk. Therefore you can stage multiple
hunks by pressing <i>s</i> multiple times.  If that's what you want,
but if not, then Magit won't bother you with the other hunks like Git
does.  The staged hunk now appears inside the "Staged changes"
section.

![](/screenshots/stage-after.png)

Unstaging of course works the same way, move to a staged change and
press <i>u</i>.  You can also stage or unstage everything at once by
pressing <i>S</i> or <i>U</i>.

# Acting on the selection

You can also stage multiple files or hunks at once. To do so mark
these sibling section using the region. (The region is an Emacs term
for "the selected text".)

First press <I>C-SPC</I> to mark one end of the region and then move
the cursor until you reach what should be the other end of it.
Alternatively you could also use the mouse.  If the region constitutes
a valid "Magit selection" which can be acted on as a unit, then it
looks like this, clearly indicating that both `CONTRIBUTING.md` and
`README.md` are selected, but `lisp/magit.el` is not:

![](/screenshots/sibling-selection.png)

Many commands which would normally act on the current section, when
such a selection is active, instead act on that selection, i.e. all
the marked sections.  Staging (<i>s</i>) is such a command.

If a region is active, but it does not constitute a valid selection
because the sections that fall into it are not siblings of one
another, then the region looks as it usually does in Emacs.  That
makes it trivial to see if you are about to act on the current section
only or on the selection.

![](/screenshots/no-selection.png)

# Staging parts of a hunk

Beside sibling selections, Magit supports a second selection, the
"hunk internal region".  You can mark just part of a hunk using the
region and then only stage (or unstage or otherwise apply) just that
part of the hunk.

Here you can see what it looks like when only the part of the hunk
which removes the word "older" is selected using the region:

![](/screenshots/stage-region-before.png)

If you pressed <i>s</i> now, then only that part would be staged,
resulting in:

![](/screenshots/stage-region-after.png)

(Note how conveniently the cursor is placed.  We take pride in such
details.  This particular detail might not be all that important when
looked at in isolation, but we go that little extra step in many
places, and that does make a difference.)

# Changing diff arguments

Instead of using a hunk internal region to just stage parts of the
hunk, you could also have told Git to make the hunks smaller using
the `-U` argument.  To do so press <i>-</i> until the hunk in question
breaks up into two.  Use <i>+</i> to do the opposite.

This works in the status buffer as well as all other buffers that may
contain diffs, so far we have seen plain diff buffers and commit
buffers.

As we have seen above you can specify several arguments when using the
diff popup to create the diff buffer.  But when showing the status
buffer by pressing <i>C-x g</i> or when showing the commit buffer by
pressing <I>RET</I>, then that is not possible.  You can however change
the diff arguments used in the current buffer.  Press <i>D</i> to bring
the diff arguments popup.  It is very similar to the diff popup in
that it offers the same arguments, but instead of actions which show
some diff in another buffer, it offers actions which affect the
current buffer.

![](/screenshots/popup-diff-arguments.png)

Press <i>g</i> to use the arguments that are currently selected in the
popup in the current buffer.  <i>s</i> sets these arguments as the
default for buffers of the same type, so if you did that in the status
buffer of some repository, then the same arguments would be used for
status buffers of other repositories that you subsequently create.
But this only lasts until you restart Emacs; to permanently save new
defaults use <i>w</i>.

A similar "log arguments" popup exists on <i>L</i>.

# Applying changes

Some other graphical tools approach Magit when it comes to the staging
features described above, but I don't think any one of them quite
makes it.  One more thing that sets Magit apart from these tools
however, is that these features are not only available for staging and
unstaging, but also when "otherwise applying changes".

With Magit you can also discard, reverse, or apply, the file, files,
hunk, hunks, or region at point using the exact same interface as
described above.  For more information about these apply variants
[consult](/manual/magit/Applying.html) the manual.

# Arguments missing from popups

If you noticed that the diff popup lacked your favorite argument, then
fear not.  It is trivial to add arguments to an existing popup, as
[describe](/manual/magit-popup/Customizing-existing-popups.html) in
the manual.

Some arguments are missing because they are not actually required.
`--cached` falls into that category; it's not needed because to show
the cached changes (those in the index) you simply use the "staged
changes" diff variant, by pressing <i>s</i>.

Other arguments, e.g. `--irreversible-delete`, are missing because we
have to strike a balance between making every argument available that
anyone might ever need and not overwhelming beginners with arguments
that nobody will ever need.

(I intend to make it possible to optionally show all arguments which
could possibly be used in a future release.)

# Log buffers

Like it is possible to show a diff in a separate buffer, that is of
course also possible for logs.  On a branch <I>RET</I> shows the
respective log and there also exists a log popup on <i>l</i>, which
looks like this:

![](/screenshots/popup-log.png)

The log buffer itself looks quite similar to what you would get on the
command line.  Here is an example of the "show all branches" variant
(notice the arguments displayed at the top):

![](/screenshots/log.png)

# Moving through logs

But things get more interesting once you press <I>RET</I> to show the
commit at point in a separate buffer.  Actually in this case it is
better to press <I>SPC</I>, that also displays the same buffer but the
current log buffer remains the current buffer.  If you now move
through the log buffer using <i>C-p</i> and <i>C-n</i>, the commit
buffer is automatically updated to show the commit which the cursor is
on in the log buffer.

![](/screenshots/log-and-commit.png)

The same works if you move through a log buffer and the other buffer
contains a blob (a "file as it was at a certain commit").  To create
such a blob buffer go to some diff in the commit buffer and press, you
guessed it, <I>RET</I>.  (Note how this goes to the appropriate
location in the blob buffer.) Go back to the log buffer and move
around to see the blob buffer being updated.

![](/screenshots/log-and-blog.png)

# Innovative variants of many commands

As we have seen Magit provides commands that allow invoking certain
variant of Git commands without having to remember and type many
arguments.  The "show diff for staged" changes, for example, is such
command that saves you from having to remember and type `--cached`.
That, while useful, isn't all that innovative by itself though.  Also
many experienced users of the Git command line have probably created
aliases for that sort of thing by now.

But Magit also provides many truly innovative commands which go beyond
what you could do with aliases.  These include, among others, commands
for committing, rebasing, stashing, and branching.  All of which will
be discussed below.

# Committing

Press <i>c</i> to show the committing popup and then <i>c</i> to
create a regular new commit.  This calls `git commit` and arranges for
the current Emacs session to be used as the `$GIT_EDITOR`.  The commit
message buffer is opened in one buffer and another buffer shows the
changes about to be committed.  When done press <i>C-c C-c</i>.

![](/screenshots/committing.png)

You can also amend to `HEAD` by pressing <i>a</i>.  This is just like
`git commit --amend`.  While editing the message while amending, press
<i>C-c C-d</i> to toggle between showing only the changes that are
being added to HEAD and all changes that will make it into the amended
commit.

There are also fixup and squash variants.  And then there are some
variants that don't exist in Git.  Because the terms used here do not
correspond to terms you might be used to from Git this might be a good
time to show you how to get more information about a popup action or
argument.  To show information about the "reword" variant type
<i>?</i> and then <i>w</i>, which gives you this:

![](/screenshots/popup-help.png)

So "reword" lets you change `HEAD`'s message without adding any
changes to it.  Similarly "extend" adds the staged changes without
forcing you to review the message, which is quite useful for simple
typo fixes.

"Instant fixup and squash" let you pick a commit to be modified with
the staged changes, but then they immediately initiate a rebase.
"Instant fixup" is mostly like "extend" but on commits other than
`HEAD`.

The commit to be modified is picked using a specialized log buffer.

![](/screenshots/log-squash.png)

# Rebasing

The rebasing popup also provides a variety of commands unique to
Magit.

![](/screenshots/popup-rebase.png)

There is one variant which lets you edit a single commit, without
having to go through having to edit a list to be rebased.  Simply go
to the commit you want to rebase in any log, press <i>r</i> to enter
the rebase popup, and then <i>m</i> to modify that commit.  Likewise
there is a variant which allows only editing the message of a single
commit.

When performing an interactive rebase (which is supposed affect more
than a single commit), then this is done as usual by editing the file
`git-rebase-todo`, but when using Magit there are a few additional key
bindings and other convenience features available:

![](/screenshots/rebase-edit.png)

When a rebase sequence is in progress, then a log-like section about
that is shown in the status buffer.  Like in a regular log, you can of
course perform various actions on the listed commits, like viewing
them.  And of course conflicts are shown too.

![](/screenshots/rebase-status.png)

You can resolve the conflict by visiting the file.  There you can use
the Smerge package to do so in style or you can just edit the file.
Or you can use the Ediff package, which shows the two sides and
optionally the common ancestor in separate windows.  Magit wraps the
features provided by these packages, but since they are not actually
part of Magit, we skip looking at them in detail.  Just so much, after
pressing <I>RET</I> on a conflict hunk you would see something like
this:

![](/screenshots/smerge.png)

Of course you could also abort the rebase by pressing <i>r</i> again, and
then <i>a</i>:	

![](/screenshots/popup-rebase-abort.png)

# Merging

The merging popup is quite simple.

![](/screenshots/popup-merge.png)

When a merge is in progress then the status buffer shows information
about that:

![](/screenshots/merge-status.png)

# Fetching, pulling and pushing

Without going into any details, here are the popups for fetching,
pulling and pushing.

![](/screenshots/popup-fetch.png)

![](/screenshots/popup-pull.png)

![](/screenshots/popup-push.png)

One thing worth noting though is that all of these popups feature a
"<i>p</i>ush-remote", a "<i>u</i>pstream", and a "<i>e</i>lsewhere"
variant.  A branch's "push-remote" is somewhat similar to the
"upstream", but it usually is a different branch.  The "push-remote"
is actually a Git feature but not many Git users know about it because
it is hardly documented.  To learn more about the "push-remote" and
how it is different from the "upstream",
see [this](/manual/magit/The-Two-Remotes.html)

# Branching

The branching popup is used to edit, create, and/or checkout a branch.

![](/screenshots/popup-branch.png)

The "create new spin-off" variant is particularly interesting.  It
creates and checks out a new branch whose upstream is the previously
checked out branch.  Then it rewinds that branch to its upstream.
This is useful when you began working on some new feature directly on
`master`, and then realize that you should be using a feature branch.

The branching popup is also one of the few popups that have a
sub-popup.  Press <i>C</i> to show the branch configuration popup.

![](/screenshots/popup-branch-config.png)

In that popup you can see the values of some important Git variables
concerning the current branch.  The values obviously can be changed
using the shown keys.

# Bisecting

TODO describe

# Blaming

TODO describe

# Visiting and navigating blobs

TODO describe

# Other Magit buffers

TODO stash etc.

### List branches, remotes, and tags

Use <i>y</i> to show branches:

![](/screenshots/refs.png)

### Show cherries

Use <i>Y</i> to show cherries:

![](/screenshots/cherries.png)

### List repositories

Use <i>M-x magit-list-repositories RET</i> to list local repositories:

![](/screenshots/list-repos.png)

### List submodules

Use <i>M-x magit-list-submodules RET</i> to list submodules:

![](/screenshots/list-submodules.png)

# Other popups

There are many other popups, including:

### <i>w</i> Am
![](/screenshots/popup-am.png)
See [Applying patches](https://magit.vc/manual/magit/Applying-patches.html).

### <i>A</i> Cherry-pick
![](/screenshots/popup-cherry-pick.png)
See [Cherry picking](https://magit.vc/manual/magit/Cherry-picking.html).

### <i>B</i> Bisect
![](/screenshots/popup-bisect.png)
See [Bisecting](https://magit.vc/manual/magit/Bisecting.html).

### <i>E</i> Ediff
![](/screenshots/popup-ediff.png)
See [Ediffing](https://magit.vc/manual/magit/Ediffing.html).

### <i>M</i> Remote
![](/screenshots/popup-remote.png)
See [Remotes](https://magit.vc/manual/magit/Remotes.html).

### <i>o</i> Submodule
![](/screenshots/popup-submodule.png)
See [Submodule popup](https://magit.vc/manual/magit/Submodule-popup.html).

### <i>O</i> Subtree
![](/screenshots/popup-subtree.png)
See [Subtree](https://magit.vc/manual/magit/Subtree.html).

### <i>t</i> Tag
![](/screenshots/popup-tag.png)
See [Tagging](https://magit.vc/manual/magit/Tagging.html).

### <i>T</i> Notes
![](/screenshots/popup-notes.png)
See [Notes](https://magit.vc/manual/magit/Notes.html).

### <i>V</i> Revert
![](/screenshots/popup-revert.png)
See [Reverting](https://magit.vc/manual/magit/Reverting.html).

### <i>W</i> Patch
![](/screenshots/popup-patch.png)
See [Creating and sending patches](https://magit.vc/manual/magit/Creating-and-sending-patches.html).

### <i>X</i> Reset
![](/screenshots/popup-reset.png)
See [Resetting](https://magit.vc/manual/magit/Resetting.html).

### <i>C-u y</i> Show refs
![](/screenshots/popup-show-refs.png)
See [References buffer](https://magit.vc/manual/magit/References-buffer.html).

### <i>z</i> Stash
![](/screenshots/popup-stash.png)
See [Stashing](https://magit.vc/manual/magit/Stashing.html).

### <i>!</i> Run
![](/screenshots/popup-run.png)
See [Running Git manually](https://magit.vc/manual/magit/Running-Git-manually.html).

[emacs]:     https://www.gnu.org/software/emacs
[git]:       https://git-scm.com
[solarized]: https://github.com/bbatsov/solarized-emacs
[zenburn]:   https://github.com/bbatsov/zenburn-emacs

