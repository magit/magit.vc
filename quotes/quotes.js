var quotes = [
    // twitter
    ["Magit removes the tedium of interacting with Git's commandline interface.",
     "Hristo Vladev",
     "https://twitter.com/hrvladev/status/500225688662978561"],
    ["Thank you Magit for teaching me git.",
     "ionrock",
     "https://twitter.com/ionrock/status/547076969754415104"],
    ["I can hardly even remember what life was like in the Beforetime, when I didn't use magit.",
     "Rad Knuckle Tats",
     "https://twitter.com/arnemart/status/527424320659017728"],
    ["Magit you're amazing. No joke magit changed my day to day workflow and I never knew how bad I had it before. Thank you so much!",
     "JJ Asghar",
     "https://twitter.com/jjasghar/status/530382020556619776"],
    ["If you hack code in emacs and you are not using the magit package, you are missing out.",
     "Stefan Arentz",
     "https://twitter.com/satefan/status/469506383637782528"],
    ["I wish I'd moved to Emacs sooner, Magit is insanely useful.",
     "dagda1",
     "https://twitter.com/dagda1/status/519875695292715008"],
    ["I'm using magit. Even when the rest of my project is not in Emacs. <3 it.",
     "borkdude",
     "https://twitter.com/borkdude/status/547032102605443072"],
    ["I can't emphasize enough how much I love magit.",
     "Matt Savoie",
     "https://twitter.com/MatthewSavoie/status/504637136948056067"],
    ["Magit profoundly changed my understanding of Git.",
     "Nicolas Petton",
     "https://twitter.com/NicolasPetton/status/776352147881521152"],
    ["I recommend magit to everyone even if it's the only reason they ever open emacs",
     "Katherine Cox-Buday",
     "https://twitter.com/katco_/status/774293076722319360"],
    ["magit is the best git ui. worth learning emacs just to use it",
     "Leonid Onokhov",
     "https://twitter.com/lonokhov/status/774172288648228864"],
    ["I'm slowly realising the power of magit and absolutely loving it",
     "Nikos Fertakis",
     "https://twitter.com/nikosfertakis/status/773109212004159488"],
    ["Every time I use magit: How do I ...? It would be really cool if it worked like this... Oh! It does!",
     "Steven R. Baker",
     "https://twitter.com/srbaker/status/763019758061096960"],
    ["I always thought Git on the command line couldnt be beaten, until I started using Magit - its the most sane way to use Git",
     "John Stevenson",
     "https://twitter.com/jr0cket/status/758688140131467264"],
    ["I’ve gone through a lot of git clients and Magit is the best one by far, and the only one better than the official CLI",
     "Nick McCurdy",
     "https://twitter.com/nickemccurdy/status/1164481622026182656"],
    // reddit (emacs)
    ["Magit has changed the way I work. It's fantastic.",
     "djork",
     "https://www.reddit.com/r/emacs/comments/1xjlrq/emacs_modes_that_are_worth_knowing_about"],
    ["Magit is great. Up there with org-mode for killer feature status!",
     "benfitzg",
     "https://www.reddit.com/r/emacs/comments/2n9tj8/anyone_care_to_share_their_magit_workflow/cmbtiig"],
    ["Magit is the only git client where I can be faster than on the command line. great stuff.",
     "tenpn",
     "https://www.reddit.com/r/emacs/comments/1c5til/meet_magit_intro_remote_reflog_rewrites_20min/c9dpgyy"],
    ["Magit being a nice interface to git is the understatement of the year: it's the best interface to git.",
     "anonymous",
     "https://www.reddit.com/r/emacs/comments/2lszjs/top_ten_things/clxxxfk"],
    ["People I work with usually think I'm crazy for using Emacs but everybody is always blown away by magit when they see it.",
     "Jordon Biondo",
     "https://www.reddit.com/r/emacs/comments/4jvta2/elpy_magit_and_emacs_in_general_are_awesome/d3bjb6t"],
    ["Magit is pure heavenly goodness",
     "nihilmancer",
     "https://www.reddit.com/r/emacs/comments/4jvta2/elpy_magit_and_emacs_in_general_are_awesome/d3cj6yz"],
    // reddit
    ["I use Mercurial and I love it, but I am considering switching to Git just for magit.",
     "durdn",
     "https://www.reddit.com/r/programming/comments/2o13do/whats_new_in_git_22/cmiwyit"],
    // hackernews
    ["I often go so far as to have an emacs session open 'on the side' just for magit, even if I'm using some sort of IDE. I'd even go so far as to say that it might even be worth learning (just enough) emacs for!",
     "lomnakkus",
     "https://news.ycombinator.com/item?id=10528278"],
    ["I used to be a hard-core command line only (no fancy shmancy UIs here GitX!) git user. I have also been an emacs user for 23 years. Since I discovered Magit I will not touch command line git anymore. It's that good. [...] It's exactly what I would expect git + emacs to be.",
     "craigching",
     "https://news.ycombinator.com/item?id=10644744"],
    ["This might be the best user interface available to Git anywhere. It doesn't just make git easier, or more intuitive, but also makes you a more effective git user.",
     "tptacek",
     "https://news.ycombinator.com/item?id=10645103"],
    ["My most important git tip is: use Magit. It really is a huge step forward from using the git CLI — but, unlike many UIs to CLI tools, it actually helps one learn the CLI, [by] presenting flags and git subcommands. Thus, it both supersedes the git CLI and teaches it, just in case one is ever on a computer without Magit.",
     "zeveb",
     "https://news.ycombinator.com/item?id=12290740"],
    ["I started using Emacs (actually Spacemacs) just to be able to learn how to use magit after reading so many people praising it. After around 6 months, I don't even touch the terminal for git",
     "pvinis",
     "https://news.ycombinator.com/item?id=12290856"],
    ["Magit made me so much better at using Git, it's ridiculous.",
     "Grue3",
     "https://news.ycombinator.com/item?id=9654390"],
    ["Hands-down the best Git interface, and entirely keyboard driven. It has improved my workflow more than any other tool besides Emacs itself.",
     "davexunit",
     "https://news.ycombinator.com/item?id=9654404"],
    ["I appreciate how Magit isn't something that takes away from the git experience by holding your hands like a GUI might. Magit is just an efficient interface that in the end is just like using standard git in the command line.",
     "Peter Hadlaw",
     "https://news.ycombinator.com/item?id=9873663"],
    ["I have used many Git UIs over the years, and Magit is the first one that lets me work with greater speed and safety than just using the command line.",
     "Duncan Bayne",
     "https://news.ycombinator.com/item?id=9875135"],
    ["Magit is love. Magit is life. If you're an emacs and git user but don't use magit, it's a big, big waste of the powers of emacs.",
     "Chetan Ahuja",
     "https://news.ycombinator.com/item?id=9875798"],
    ["[Magit is] a fantastic way to use git with a perfect balance between making simple things very easy to do and allowing (almost) anything you can do with the CLI while providing excellent visual feedback.",
     "duerrp",
     "https://news.ycombinator.com/item?id=12888471"],
    ["Magit is a marvelous piece of work indeed, and the thing that keeps me going back to Emacs every time I get curious about some other editor.",
     "pYQAJ6Zm",
     "https://news.ycombinator.com/item?id=12888471"],
    ["I use Xcode and VS Code ever day, and I absolutely never use the Git functionality in either of them. I tried both for a few weeks each, but absolutely nothing compares to Magit. Not even command line. For git, Magit is the same secret weapon that pg claimed Lisp was for programming.",
     "sdegutis",
     "https://news.ycombinator.com/item?id=18621634"],
    ["Magit is that good, really. The way I see it, it reduces the burden associated with carrying the required git mental model in your mind, by giving you easier points of entry into its complexity. I owe all the slightly more advanced things I now routinely do with git (which would probably be seen as pretty basic by a lot of people though) to Magit, without question.",
     "cjauvin",
     "https://news.ycombinator.com/item?id=16892406"],
    ["Yep- I'm actually a pretty old hand when it comes to git, and I know most of what git can do, but... I'm lazy, so when I use git at the command line I do caveman git. Magit lets me remain lazy and do subtle git things,",
     "Tagore",
     "https://news.ycombinator.com/item?id=16894928"],
    // lwn
    ["Magit is one of those rare packages which actually help you better understand the tool it provides an interface to.",
     "Paul D. Smith",
     "https://lwn.net/Articles/638804"],
    ["Magit is the porcelain/TUI git always needed. It’s really that good.",
     "rauhl",
     "https://news.ycombinator.com/item?id=18725570"],
    ["Emacs 'just' lets you display and interact with text on your screen, and it does it very well. I didn't think much of text UIs until I used Magit.",
     "globuous",
     "https://news.ycombinator.com/item?id=20374881"],
    // github
    ["Magit is one of those packages in Emacs that I simply cannot do without, and that I use multiple times a day, every day.",
     "John Wiegley",
     "https://github.com/magit/magit/issues/1645#issuecomment-112866395"],
    ["Magit allowed me to become very fluid with operations others wouldn't dare considering for their normal workflow while feeling very safe.",
     "Philippe Vaucher",
     "https://github.com/magit/magit/issues/1645#issuecomment-112875030"],
    // elsewhere
    ["I wrote the original git.el Emacs front-end, and used that for a few years, but it was never very good. I'm glad that people smarter than me have now tackled the problem, and Magit does a great job of making the full power of git accessible from Emacs.",
     "Alexandre Julliard",
     "https://www.linux.com/blog/git-success-stories-and-tips-wine-maintainer-alexandre-julliard"],
    ["Discovering magit was like finding beer, on Christmas, hidden in a lower counter on your uncle's house, back when you were 12.",
     "Yoandy Rodriguez Martinez",
     "https://dev.to/yorodm/comment/8a6d"],
    ["Love when I'm using a tool and get \"damn this is well thought out\" feeling. Magit (Git client) for Emacs. Been using it for a couple of years and still get these awe moments.",
     "Hastouki",
     "https://devrant.com/rants/1296988"],
    ["Ok, #Magit has to be my favourite thing about #Emacs so far. Been using the Git CLI for years and never thought I'd find something more elegant, yet here we are.",
     "Gueorgui",
     "https://merveilles.town/@gueorgui/102685740382369640"]
];

// TODO These longer quotes look at the bigger picture and have to be
// presented differently from the above.
// - https://www.reddit.com/r/emacs/comments/aept8c/how_did_you_learn_magit/edvj57w
// - https://news.ycombinator.com/item?id=16594344

function inject_quotes() {
    var i = Math.floor(Math.random()*quotes.length);
    var e = document.getElementById("quote1");
    e.innerHTML = quotes[i][0]+" — <cite>"+quotes[i][1]+"</cite>";

    quotes.splice(i,1);

    i = Math.floor(Math.random()*quotes.length);
    e = document.getElementById("quote2");
    e.innerHTML = quotes[i][0]+" — <cite>"+quotes[i][1]+"</cite>";
}

function list_quotes() {
    var elt = document.getElementById("quotes");
    var len = quotes.length;
    for (var i = 0; i < len; i++) {
	var child = document.createElement("blockquote");
	child.innerHTML = quotes[i][0]+" — <cite>"+quotes[i][1]+"</cite>";
	elt.appendChild(child);
    }
}
