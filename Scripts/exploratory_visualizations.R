# load necessary libraries
library(tidyverse)
library(knitr)
library(here)

# load functions from function_code.R
source(here("Scripts/function_code.R"))

# exploratory visualization #1: total number of actions over time

# laod data
fb_data <- read_csv(here("data/Facebook-Content-Moderation-Data.csv"))

# get data
fb_viz1 <- fb_data %>% filter(!is.na(n_actions)) %>% 
  group_by(year, quarter) %>% 
  summarize(sum_actions = sum(n_actions), n = n()) %>% 
  year_quarter_f() %>% 
  filter(year_quarter >= 2018.8) # exclude years prior to fourth quarter of 2018
  # due to high number of NA's

# visualize 

plot_n_actions <- fb_viz1 %>% 
  ggplot() + 
  geom_line(aes(x = year_quarter, y = sum_actions))

print(plot_n_actions)

# note: it appears that the number of actions significantly declined throughout 2020 
  # and into 2021. Very, very interesting

# exploratory visualization #2: total number of actions over time by policy area

# get_data
fb_viz2 <- fb_data %>% filter(!is.na(n_actions)) %>% 
  group_by(year, quarter, policy_area) %>% 
  summarize(sum_actions = sum(n_actions)) %>% 
  year_quarter_f() %>% 
  filter(year_quarter >= 2018.8) # exclude years prior to fourth quarter of 2018
# due to high number of NA's

# visualize
plot_n_actions_by_area <- fb_viz2 %>% 
  ggplot() + 
  geom_line(aes(x = year_quarter, 
    y = sum_actions, 
    color = policy_area))
    
print(plot_n_actions_by_area)

# note: actions taken against spam and fake accounts are orders of magnitude higher than
  # other policy areas. performing the same visualization without these two categories

# exploratory visualization #3: same as #2 without spam and fake accounts

# get data
fb_viz3 <- fb_data %>% filter(!is.na(n_actions)) %>% 
  group_by(year, quarter, policy_area) %>% 
  summarize(sum_actions = sum(n_actions)) %>% 
  year_quarter_f() %>% 
  filter(year_quarter >= 2018.8, # exclude years prior to fourth quarter of 2018
        !(policy_area %in% c("Spam", "Fake Accounts"))) 

# visualize 
plot_no_spam_fake_accounts <- fb_viz3 %>% 
  ggplot() + 
  geom_line(aes(x = year_quarter, 
                y = sum_actions, 
                color = policy_area))

print(plot_no_spam_fake_accounts)

# notes: the line graph absent spam and fake accounts reveal a couple of very 
# interesting insights. first, the downward trajectory of spam and fake accoutnts 
# largely explains the overall decline in number of actions taken. second, the greatest
# number of actions in recent years are in the areas of adult nudity & sexual activity, 
# violent & graphic content, and most interestingly hate speech. the significant decline 
# of actions aginst adult nudity and sexual activity is curious, and the significant 
# increase in action against hate speech over 2020 is tremendously interesting

# exploratory visualization #4: total number of actions over time 
# absent spam and fake accounts

# get data
fb_viz4 <- fb_data %>% 
  filter(!is.na(n_actions), 
    !(policy_area %in% c("Spam", "Fake Accounts"))) %>% 
  group_by(year, quarter) %>% 
  summarize(sum_actions = sum(n_actions), n = n()) %>% 
  year_quarter_f() %>% 
  filter(year_quarter >= 2018.8) # exclude years prior to fourth quarter of 2018

# visualize 
plot_n_actions_no_spam_fake_accounts <- fb_viz4 %>% 
  ggplot() + 
  geom_line(aes(x = year_quarter, y = sum_actions))

print(plot_n_actions_no_spam_fake_accounts)

# note: indeed, spam and fake accounts explain the overall decline in number of actions. 
# it seems that with these categories excluded, the overall number of actions is actually 
# increasing over time. 

# visualization number #5: box plot of proactive rate by policy area

# get data

fb_viz5 <- fb_data %>% filter(!is.na(proactive_rate)) 

# visualize

plot_proactive_rate <- fb_viz5 %>% 
  ggplot() + 
    geom_boxplot(aes(x = policy_area, 
      y = proactive_rate, 
      color = policy_area)) + 
  coord_flip()

print(plot_proactive_rate)

# note: the machine learning layer of FB's content moderation is very spotty at catching
# context dependent categories of content like bully & harrassment + hate speech. the 
# both the reliably poor poerformance of the former and variability of the latter are 
# are very interesting problems. 

# visualization number #5: box plot of proactive rate by policy area without 
# bully & harrassment + hate speech

# get data

fb_viz6 <- fb_data %>% 
  filter(!is.na(proactive_rate), 
    !(policy_area %in% c("Bullying & Harassment", "Hate Speech")))

# visualize

plot_proactive_rate_no_bully_hate <- fb_viz6 %>% 
  ggplot() + 
  geom_boxplot(aes(x = policy_area, 
                   y = proactive_rate, 
                   color = policy_area)) + 
  coord_flip()

print(plot_proactive_rate_no_bully_hate)

# note: not as intersting. AI pick up the vast majority of content from 
# most categories, but the regulated goods categories stand out as being relatively lower,
# even though in absolute terms 90% of the time FB picks acts on these posts without
# any human flagging. it's also worth noting that FB almost always catches spam,
# fake accounts, and child nudity & sexual exploitation. 

# visualization number #7: box plot of % appealed by policy area

# get data 

fb_viz7 <- fb_data %>% 
  filter(!is.na(n_actions), !is.na(n_appeals)) %>% 
  mutate(percent_appealed = (n_appeals / n_actions) * 100) 

# visualize data

plot_percent_appealed <- fb_viz7 %>% 
  ggplot() + 
    geom_boxplot(aes(x = policy_area, 
      y = percent_appealed, color = policy_area)) + 
    coord_flip()

print(plot_percent_appealed)

# note: this is fascinating if self-explanatory. certain categories of content 
# routinely get appealed more often than others

# visualization number #7: box plot of % restored by policy area

# get data 

fb_viz8 <- fb_data %>% 
  filter(!is.na(n_actions), 
    !is.na(n_restore_appl),
    !is.na(n_restore_no_appl)) %>% 
  mutate(percent_restored = ((n_restore_appl + n_restore_no_appl) / n_actions) * 100) %>% 
  filter(percent_restored < 6) # excluding a few extreme outlier observations

# visualize data

plot_percent_restored <- fb_viz8 %>% 
  ggplot() + 
  geom_boxplot(aes(x = policy_area, 
                   y = percent_restored, color = policy_area)) + 
  coord_flip()

print(plot_percent_restored)

# note: the percentage restored is much more variable than the percent appealed. it is 
# worth noting that restores aren't always a product of appeals. interstly, spam is 
# nearly both the least appealed, most restored, and most variably restored. I'm not quite
# sure what to make of the pretty mixed back of percentages otherwise; policy area
# doesn't seem to explain the diversity very well (or at least I don't see patterns in them).
# it is interesting, however, how certain categories are RARELY restored. these are 
# sexual or violent in nature: suicide and self-injury, violent and graphic content, and
# child nudity and sexual exploitation. (perhaps the most harmful of the bunch). 

