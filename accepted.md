---
layout: default
---
Congratulations!

You've had your article accepted for the Perl Advent Calendar this year!  So
now what?

## Cloning the Repo

Shortly you should get an email from github telling you that you've been invited
to join the Perl Advent group.  Once you receive this you should head on over
to:

[https://github.com/perladvent/Perl-Advent](https://github.com/perladvent/Perl-Advent)

And clone the repository.

    git clone git@github.com:perladvent/Perl-Advent.git

Once you've got a local clone of the repo you should go ahead and *switch to the
y2026 branch*.

    cd Perl-Advent
    git checkout y2026

Then you should enter the submission directory:

    cd 2026/submission

Now you should create your article in this directory.  Call it something
named after the module

    vim my-module-name-in-kebab-case.pod
    git add my-module-name-in-kebab-case.pod
    git commit -m '1st Draft on My::Module::Name'
    git push

You'll note that you're *directly* working in the live repo here - there's no
need for pull requests when editing your own submission. (However: if you want
to make other changes to other articles etc, you should however make a new
branch from y2026 then make a pull request against y2026.)

## Local previewing

Should you want to preview the article locally, there's a few steps to take.

First, you'll need to install the [WWW::AdventCalendar](https://metacpan.org/pod/WWW::AdventCalendar)
module from the CPAN:

     cpanm WWW::AdventCalendar

Then you'll be able to build the advent calendar.  First change to the top
level entry for y2026:

    cd Perl-Advent
    cd 2026

Copy over the submission

    mkdir articles
    cp submission/my-module-name-in-kebab-case.pod articles/2026-12-01.pod

Then run the `advcal` command

    advcal -c advent.ini --today 2026-01-01

You can now see the resulting article in `out/2026-12-01.html`!

Whatever you do, don't check in the articles directory with these changes!
Heck, you might want to protect yourself from accidentally doing that:

    cd ..
    echo '2026/articles' >>.git/info/exclude

(You can undo this later when your article has been officially moved to this
directory)

{% include article-guidelines.md %}

## When Will My Article Go Live?

As time moves on the editors will move your article from the submissions
directory into the articles directory.  At that point your article will get a
`2026-12-DD.pod` file name which will determine when it goes live.

However: Note that the exact date that things go live are always subject to
last minute changes (or how we like to say in the business "Oh crud that other
article isn't ready now I need to re-arrange everything".)

The Perl Advent Calendar is rebuilt on every merge to `main`, so changes you
make after your article goes live should automatically be published within a
few minutes.

## Deadlines

As a reminder, here's the deadlines for the article:

* 11:59 PM EST Sunday **November 1st 2026**: First draft of article submission
  committed by author into Perl Advent Calendar Github repository.  This need
  not be 100% completed at this point, but at this point the Perl Advent
  Calendar editorial team will start the editing process (correcting typos,
  editing for house style, making sure the article renders correctly, suggesting
  language and graphics improvements, etc.)

* 11:59 PM EST Sunday **November 15th 2026**: Deadline for the final changes
  to the articles

* 12:00 AM EST Tuesday **December 1st 2026**: Advent begins.  Go live date.

## Questions?

Please comment on the original issue you raised when you submitted your article
suggestion. Thank you.
