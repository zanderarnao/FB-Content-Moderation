The New Governor: Facebook’s Content Moderation
================

-   [Introduction](#introduction)
-   [Response to Public Pressure](#response-to-recent-public-pressure)
-   [The Limits of Content
    Moderation](#the-limits-of-content-moderation)
-   [Conclusion](#conclusion)
-   [Session info](#session-info)

# Introduction

------------------------------------------------------------------------

### A Primer on Content Moderation

Facebook is one of the [New
Governors](https://harvardlawreview.org/wp-content/uploads/2018/04/1598-1670_Online.pdf);
it employs a complicated mixture of [machine
learning](https://www.theverge.com/2020/11/13/21562596/facebook-ai-moderation),
[human
bureaucrats](https://www.npr.org/2020/11/18/936282353/facebook-contract-workers-demand-safer-conditions-amid-pressure-to-return-to-off),
and [Community Standards](https://www.facebook.com/communitystandards/)
to moderate a large segment of the world’s communications system.
Because of the First Amendment, the work of curtailing objectionable
content from the online information ecosystem falls to private companies
like Facebook.

Recently, this governance (or lack thereof) has become a lightning rod
for political criticism. Critics from all sides of the political
spectrum excoriate the Facebook for its role in spreading
[disinformation](https://www.npr.org/2021/03/06/974394783/far-right-misinformation-is-thriving-on-facebook-a-new-study-shows-just-how-much)
and [hate speech](https://news.un.org/en/story/2020/12/1080832) and
[“censoring”
conservatives](https://www.npr.org/2020/11/14/934833214/conservatives-flock-to-mercer-funded-parler-claim-censorship-on-facebook-and-twi).
This dissatsification has emerged most concretely in debates surrounding
amendments to [Section
230](https://www.businessinsider.com/what-is-section-230-internet-law-communications-decency-act-explained-2020-5)
of the Communications Decency Act, which confers broad immunity to
technology companies from legal liability for user-generated content.

Major changes to Section 230 would significantly change the Internet as
we know it, so policymakers must go deeper than simple media narratives
and understand the complex realities behind Facebook’s content
moderation. Luckily, as part of its quarterly [Transparency
Report](https://transparency.fb.com/data/), the company has regularly
published
[data](https://transparency.fb.com/data/community-standards-enforcement)
about its content moderation since 2017. Below I explain these data and
then outline a set of questions which motivate two hypotheses.

### Explanation of Facebook Transparency Data

The data provide information about content moderation decisions made by
Facebook and Instagram according to their shared Community Standards.
Specifically, they contain metrics like number of overall “actions”
(i.e. deletions), proactive actions (i.e. deletions without human
flagging), appeals, and restores with and without appeal. These metrics
are provided broken down by the 12 categories of content (enumerated
[here](https://transparency.fb.com/policies/)) prohibited according to
the Community Standards. I tidied the data and broke it up into two data
frames containing the same variables: one for Facebook and one for
Instagram. Here I focus solely on data for Facebook’s content moderation
due to the poor quality of published Instagram data

### Questions to Explore

After an initial glimpse at the data, I have the following questions
about Facebook’s content moderation:

-   Has Facebook’s content moderation changed in response to the recent
    wave of public attention paid to its practices?

    -   If so, what types of content has the company begun to recently
        address?

-   What categories of prohibited content is Facebook able to moderate
    least and most successfully?

-   What implications do the answers to these questions have to policy
    debates surrounding Section 230 of the Commmunications Decency Act?

## Response to Recent Public Pressure

------------------------------------------------------------------------

Over the last few years, Facebook’s content moderation has come under
increasing scrutiny everywhere from the media to electoral politics. I
hypothesize that Facebook would adapt to this increased pressure by
taking a more aggressive stance against categories of content viewed as
particularly objectionable by the public. I start my analysis with a big
picture look at the number actions Facebook has taken against
unacceptable content over the last few years:

![](report_document_files/figure-gfm/total%20actions%20taken-1.png)<!-- -->

At first, this figure surprises. Facebook has taken *fewer* actions to
moderate content since late 2018? If anything, public pressure demands
more investment and care in curtailing unacceptable content from the
social networking giant. What explains this seeming discrepancy?
Luckily, we have more information at our disposal; we break down the
total number of actions by policy area (i.e. category of restricted
content).

![](report_document_files/figure-gfm/total%20actions%20by%20policy%20area-1.png)<!-- -->

The figure above makes clear that the *vast* majority of actions taken
by Facebook’s content moderation system are against spam content and
fake accounts. All other categories pale in comparison to the point that
they barely register on the graph. Changes in the amount of spam and
fake content moderated will have profound effects upon the total number
of actions taken. Just to drive the magnitude of these two categories of
content home, I break down the number of actions in a stacked bar graph:

![](report_document_files/figure-gfm/stacked%20bar-1.png)<!-- -->

But we have yet to answer our initial question! Why are the total number
of actions going down in spite of recent public attention to content
moderation? It is clear from the graph above that number of actions
against spam and fake accounts are decreasing, but what about the other
categories? Perhaps their changes are more in line with our hypothesis
of greater aggressiveness in content moderation. Let us find out.

![](report_document_files/figure-gfm/no%20spam%20or%20fake%20accounts-1.png)<!-- -->

Once spam and fake accounts have been removed from the plot, it becomes
clear that the overall decrease is almost entirely explained by their
diminution. The other policy areas while smaller show no clear downward
trajectory. Three categories stand out in this plot for their magnitude:
Violent & Graphic Content, Adult Nudity & Sexual Activity, and Hate
Speech.

The latter is particularly interesting as its increase during 2020 might
reflect greater attention by Facebook to addressing criticisms related
to hate speech on its platform. While it is possible that this increase
is due to background events, the jump in number of actions is sudden
enough that Facebook could have started more actively curtailing it in
response to public pressure. Here we have a confirmatory indicator for
our hypothesis.

## The Limits of Content Moderation

------------------------------------------------------------------------

Like any other computational tool, the machine learning elements of
Facebook’s content moderation are imperfect. It is known that machine
learning algorithms struggle to understand a content’s context to the
same degree a typical human can. Some categories of content then simply
defy easy classification for machines. Therefore, I hypothesize that
categories of content which require strong reference to their context
are more error prone than categories that are easier to define in a
stricter sense.

I test this hypothesis by comparing the proactive rate and percent of
actions appeals across each category of content. Context-dependent
categories like Hate Speech and Bullying & Harassment will be less
efficacious than more objectively definable categories like Spam and
Child Nudity & Sexual Exploitation. That is, context-dependent
categories will have lower proactive rates and higher percentages of
appeal relative to more objective categories.

![](report_document_files/figure-gfm/proactive%20rate%20box%20plot-1.png)<!-- -->![](report_document_files/figure-gfm/proactive%20rate%20box%20plot-2.png)<!-- -->
The above graph is in line with the hypothesis. The proactive rate
measures the percentage of actioned content removed prior to any human
flags, i.e. detected by machines without human assistance. It is thus a
measure of the efficacy of machine learning algorithms for each content
category. The box plots show the central tendency and distribution of
this rate by policy area. One can see that the context dependent groups
are both systematically lower and more variable than the more objective.

In particular, detection of Bullying & Harassment is startlingly low and
Hate Speech unacceptably variable. In the box plot without these two
categories, it is easy to see that every other category possesses
proactive rates in excess of 90%, especially the most objective
categories like Child Nudity & Sexual Exploitation and Spam which are
near perfect. Machine learning algorithms are thus limited in their
capacity to deal with context-dependent content, a weakness that ensures
some user exposure.

If artificial intelligence is less likely to correctly flag
context-dependent content, what of when it does assert a classification?
Will it be prone to making disproportionate errors? I check this below
by comparing the percentage of appeals across policy areas.

![](report_document_files/figure-gfm/percent%20appealed%20box%20plot-1.png)<!-- -->

Indeed, the hypothesis’s prediction once again proves accurate. The
percentage of actions against context-dependent content, particularly
Hate Speech and Bullying & Harassment, is much higher and more variable
than the their more objective counterparts. Interestingly, content
removed for Adult Nudity & Sexual Activity also appears prone to appeal.
Spam content and Child Nudity & Sexual Exploitation by comparison rarely
see appeals. Once more the data exposes the errors made by machine
learning algorithms when they flag context-dependent content.

# Conclusion

------------------------------------------------------------------------

We conclude by answering my last question. It has become clear from the
analysis above that there are real issues with Facebook’s content
moderation system as well the public’s understanding of it. Firstly,
while the public focuses on issues like disinformation and hate speech,
Facebook’s content moderation is not geared toward nor effective at
resolving these issues. In spite of a recent increase in the number of
actions against Hate Speech, moderation the vast majority of the time
removes the less controversial content like spam and fake accounts.

And when the machine learning elements of content moderation do focus on
more objectionable content, they are often ineffective. From hate speech
to disinformation this content is usually only identifiable by
referencing context, which is a challenging task for today’s machine
learning algorithms. Advocates of reform to Section 230 must have these
hard realities in mind. The fundamental limits of technology make
incentivizing more aggressive moderation by exposing technology
companies to liabilities for user-generated content a blunt tool to
address the blight of objectionable content.

# Session Info

    ## ─ Session info ───────────────────────────────────────────────────────────────
    ##  setting  value                               
    ##  version  R version 4.0.1 (2020-06-06)        
    ##  os       Red Hat Enterprise Linux 8.4 (Ootpa)
    ##  system   x86_64, linux-gnu                   
    ##  ui       X11                                 
    ##  language (EN)                                
    ##  collate  en_US.UTF-8                         
    ##  ctype    en_US.UTF-8                         
    ##  tz       America/Chicago                     
    ##  date     2021-07-15                          
    ## 
    ## ─ Packages ───────────────────────────────────────────────────────────────────
    ##  package      * version date       lib source        
    ##  assertthat     0.2.1   2019-03-21 [2] CRAN (R 4.0.1)
    ##  backports      1.2.1   2020-12-09 [2] CRAN (R 4.0.1)
    ##  broom          0.7.5   2021-02-19 [2] CRAN (R 4.0.1)
    ##  cachem         1.0.4   2021-02-13 [2] CRAN (R 4.0.1)
    ##  callr          3.6.0   2021-03-28 [2] CRAN (R 4.0.1)
    ##  cellranger     1.1.0   2016-07-27 [2] CRAN (R 4.0.1)
    ##  cli            2.3.1   2021-02-23 [2] CRAN (R 4.0.1)
    ##  colorspace     2.0-0   2020-11-11 [2] CRAN (R 4.0.1)
    ##  crayon         1.4.1   2021-02-08 [2] CRAN (R 4.0.1)
    ##  DBI            1.1.1   2021-01-15 [2] CRAN (R 4.0.1)
    ##  dbplyr         2.1.0   2021-02-03 [2] CRAN (R 4.0.1)
    ##  desc           1.3.0   2021-03-05 [2] CRAN (R 4.0.1)
    ##  devtools       2.3.2   2020-09-18 [2] CRAN (R 4.0.1)
    ##  digest         0.6.27  2020-10-24 [2] CRAN (R 4.0.1)
    ##  dplyr        * 1.0.5   2021-03-05 [2] CRAN (R 4.0.1)
    ##  ellipsis       0.3.1   2020-05-15 [2] CRAN (R 4.0.1)
    ##  evaluate       0.14    2019-05-28 [2] CRAN (R 4.0.1)
    ##  fansi          0.4.2   2021-01-15 [2] CRAN (R 4.0.1)
    ##  farver         2.1.0   2021-02-28 [2] CRAN (R 4.0.1)
    ##  fastmap        1.1.0   2021-01-25 [2] CRAN (R 4.0.1)
    ##  forcats      * 0.5.1   2021-01-27 [2] CRAN (R 4.0.1)
    ##  fs             1.5.0   2020-07-31 [2] CRAN (R 4.0.1)
    ##  generics       0.1.0   2020-10-31 [2] CRAN (R 4.0.1)
    ##  ggplot2      * 3.3.3   2020-12-30 [2] CRAN (R 4.0.1)
    ##  glue           1.4.2   2020-08-27 [2] CRAN (R 4.0.1)
    ##  gtable         0.3.0   2019-03-25 [2] CRAN (R 4.0.1)
    ##  haven          2.3.1   2020-06-01 [2] CRAN (R 4.0.1)
    ##  here         * 1.0.1   2020-12-13 [2] CRAN (R 4.0.1)
    ##  highr          0.8     2019-03-20 [2] CRAN (R 4.0.1)
    ##  hms            1.0.0   2021-01-13 [2] CRAN (R 4.0.1)
    ##  htmltools      0.5.1.1 2021-01-22 [2] CRAN (R 4.0.1)
    ##  httr           1.4.2   2020-07-20 [2] CRAN (R 4.0.1)
    ##  jsonlite       1.7.2   2020-12-09 [2] CRAN (R 4.0.1)
    ##  knitr        * 1.31    2021-01-27 [2] CRAN (R 4.0.1)
    ##  labeling       0.4.2   2020-10-20 [2] CRAN (R 4.0.1)
    ##  lifecycle      1.0.0   2021-02-15 [2] CRAN (R 4.0.1)
    ##  lubridate      1.7.10  2021-02-26 [2] CRAN (R 4.0.1)
    ##  magrittr       2.0.1   2020-11-17 [2] CRAN (R 4.0.1)
    ##  memoise        2.0.0   2021-01-26 [2] CRAN (R 4.0.1)
    ##  modelr         0.1.8   2020-05-19 [2] CRAN (R 4.0.1)
    ##  munsell        0.5.0   2018-06-12 [2] CRAN (R 4.0.1)
    ##  pillar         1.5.1   2021-03-05 [2] CRAN (R 4.0.1)
    ##  pkgbuild       1.2.0   2020-12-15 [2] CRAN (R 4.0.1)
    ##  pkgconfig      2.0.3   2019-09-22 [2] CRAN (R 4.0.1)
    ##  pkgload        1.2.0   2021-02-23 [2] CRAN (R 4.0.1)
    ##  prettyunits    1.1.1   2020-01-24 [2] CRAN (R 4.0.1)
    ##  processx       3.5.0   2021-03-23 [2] CRAN (R 4.0.1)
    ##  ps             1.6.0   2021-02-28 [2] CRAN (R 4.0.1)
    ##  purrr        * 0.3.4   2020-04-17 [2] CRAN (R 4.0.1)
    ##  R6             2.5.0   2020-10-28 [2] CRAN (R 4.0.1)
    ##  RColorBrewer * 1.1-2   2014-12-07 [2] CRAN (R 4.0.1)
    ##  Rcpp           1.0.6   2021-01-15 [2] CRAN (R 4.0.1)
    ##  readr        * 1.4.0   2020-10-05 [2] CRAN (R 4.0.1)
    ##  readxl         1.3.1   2019-03-13 [2] CRAN (R 4.0.1)
    ##  remotes        2.3.0   2021-04-01 [2] CRAN (R 4.0.1)
    ##  reprex         2.0.0   2021-04-02 [2] CRAN (R 4.0.1)
    ##  rlang          0.4.10  2020-12-30 [2] CRAN (R 4.0.1)
    ##  rmarkdown      2.7     2021-02-19 [2] CRAN (R 4.0.1)
    ##  rprojroot      2.0.2   2020-11-15 [2] CRAN (R 4.0.1)
    ##  rstudioapi     0.13    2020-11-12 [2] CRAN (R 4.0.1)
    ##  rvest          1.0.0   2021-03-09 [2] CRAN (R 4.0.1)
    ##  scales         1.1.1   2020-05-11 [2] CRAN (R 4.0.1)
    ##  sessioninfo    1.1.1   2018-11-05 [2] CRAN (R 4.0.1)
    ##  stringi        1.5.3   2020-09-09 [2] CRAN (R 4.0.1)
    ##  stringr      * 1.4.0   2019-02-10 [1] CRAN (R 4.0.1)
    ##  testthat       3.0.2   2021-02-14 [2] CRAN (R 4.0.1)
    ##  tibble       * 3.1.0   2021-02-25 [2] CRAN (R 4.0.1)
    ##  tidyr        * 1.1.3   2021-03-03 [2] CRAN (R 4.0.1)
    ##  tidyselect     1.1.0   2020-05-11 [2] CRAN (R 4.0.1)
    ##  tidyverse    * 1.3.0   2019-11-21 [2] CRAN (R 4.0.1)
    ##  usethis        2.0.1   2021-02-10 [2] CRAN (R 4.0.1)
    ##  utf8           1.2.1   2021-03-12 [2] CRAN (R 4.0.1)
    ##  vctrs          0.3.7   2021-03-29 [2] CRAN (R 4.0.1)
    ##  withr          2.4.1   2021-01-26 [2] CRAN (R 4.0.1)
    ##  xfun           0.22    2021-03-11 [2] CRAN (R 4.0.1)
    ##  xml2           1.3.2   2020-04-23 [2] CRAN (R 4.0.1)
    ##  yaml           2.2.1   2020-02-01 [2] CRAN (R 4.0.1)
    ## 
    ## [1] /home/arnaoz/R/x86_64-pc-linux-gnu-library/4.0
    ## [2] /opt/R/4.0.1/lib/R/library
