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
y2025 branch*.

    cd Perl-Advent
    git checkout y2025

Then you should enter the submission directory:

    cd 2025/submission

Now you should create your article in this directory.  Call it something
named after the module

    vim my-module-name-in-kebab-case.pod
    git add my-module-name-in-kebab-case.pod
    git commit -m '1st Draft on My::Module::Name'
    git push

You'll note that you're *directly* working in the live repo here - there's no
need for pull requests when editing your own submission. (However: if you want
to make other changes to other articles etc, you should however make a new
branch from y2025 then make a pull request against y2025.)

## Local previewing

Should you want to preview the article locally, there's a few steps to take.

First, you'll need to install the [WWW::AdventCalendar](https://metacpan.org/pod/WWW::AdventCalendar)
module from the CPAN:

     cpanm WWW::AdventCalendar

Then you'll be able to build the advent calendar.  First change to the top
level entry for y2025:

    cd Perl-Advent
    cd 2025

Copy over the submission

    mkdir articles
    cp submission/my-module-name-in-kebab-case.pod articles/2025-12-01.pod

Then run the `advcal` command

    advcal -c advent.ini --today 2025-01-01

You can now see the resulting article in `out/2025-12-01.html`!

Whatever you do, don't check in the articles directory with these changes!
Heck, you might want to protect yourself from accidentally doing that:

    cd ..
    echo '2025/articles' >>.git/info/exclude

(You can undo this later when your article has been officially moved to this
directory)

### Guidelines on the Articles ###

- The best way to see what we're after in an article is to take a look at
  [the previous years' articles](https://www.perladvent.org/2022/).

- Our articles should try and be light and trivial and along the Christmas theme.  Our variable names can be `$rudolph`, or `$frosty`, or `$mrhankey`.  Our articles
are often stories of problems fictional Christmas characters have.  In all, we
try to be entertaining in our articles.

- We like our articles to contain text and code interspersed, and if necessary a final script at the end with lots of comments.

- Pictures, graphs, and other graphics are good and highly encouraged.  Last year we included animated gifs of terminal output, renderes of spinning OpenGL snowflakes, and a full interactive JavaScript map of the world showing off GeoIP location from Perl.

- Formatting is in POD with a custom header.  See [the source for previous year's articles](https://github.com/perladvent/Perl-Advent/tree/main/2022/articles) for examples.  You can use [`=for html`](https://github.com/perladvent/Perl-Advent/blame/main/2015/articles/2015-12-02.pod#L75) or even [`=for web_only` and `=for rss_only`](https://github.com/perladvent/Perl-Advent/blame/main/2015/articles/2015-12-01.pod#L7) if needed to add custom HTML to your POD.

## When Will My Article Go Live?

As time moves on the editors will move your article from the submissions
directory into the articles directory.  At that point your article will get a
`2025-12-DD.pod` file name which will determine when it goes live.

However: Note that the exact date that things go live are always subject to
last minute changes (or how we like to say in the business "Oh crud that other
article isn't ready now I need to re-arrange everything".)

The Perl Advent Calendar is rebuilt on every merge to `main`, so changes you
make after your article goes live should automatically be published within a
few minutes.

## Deadlines

As a reminder, here's the deadlines for the article:

* 11:59 PM EST Tuesday **November 1st 2025**: First draft of article submission
  committed by author into Perl Advent Calendar Github repository.  This need
  not be 100% completed at this point, but at this point the Perl Advent
  Calendar editorial team will start the editing process (correcting typos,
  editing for house style, making sure the article renders correctly, suggesting
  language and graphics improvements, etc.)

* 11:59 PM EST Tuesday **November 15th 2025**: Deadline for the final changes
  to the articles

* 12:00 AM EST Thursday **December 1st 2025**: Advent begins.  Go live date.

## Questions?

Please comment on the original issue you raised when you submitted your article
suggestion. Thank you.
