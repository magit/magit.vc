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
    // reddit
    ["If you are using Emacs you should check out magit which is one of the best if not the best git tools out there.",
     "elpix",
     "https://www.reddit.com/r/linux/comments/2nra4q/tortoisegit_alternative_for_linux/cmg8596"],
    ["I use Mercurial and I love it, but I am considering switching to Git just for magit.",
     "durdn",
     "https://www.reddit.com/r/programming/comments/2o13do/whats_new_in_git_22/cmiwyit"],
    // lwn
    ["Magit is one of those rare packages which actually help you better understand the tool it provides an interface to.",
     "madscientist",
     "https://lwn.net/Articles/638804"],
    // github
    ["Magit is one of those packages in Emacs that I simply cannot do without, and that I use multiple times a day, every day.",
     "John Wiegley",
     "https://github.com/magit/magit/issues/1645#issuecomment-112866395"],
    ["Magit allowed me to become very fluid with operations others wouldn't dare considering for their normal workflow while feeling very safe.",
     "Philippe Vaucher",
     "https://github.com/magit/magit/issues/1645#issuecomment-112875030"]
];

function inject_quotes() {
    var i = Math.floor(Math.random()*quotes.length);
    var e = document.getElementById("quote1");
    e.innerHTML = quotes[i][0]+" &mdash; <cite>"+quotes[i][1]+"</cite>";

    quotes.splice(i,1);

    i = Math.floor(Math.random()*quotes.length);
    e = document.getElementById("quote2");
    e.innerHTML = quotes[i][0]+" &mdash; <cite>"+quotes[i][1]+"</cite>";
}

function list_quotes() {
    var elt = document.getElementById("quotes");
    var len = quotes.length;
    for (var i = 0; i < len; i++) {
	var child = document.createElement("blockquote");
	child.innerHTML = quotes[i][0]+" &mdash; <cite>"+quotes[i][1]+"</cite>";
	elt.appendChild(child);
    }
}
