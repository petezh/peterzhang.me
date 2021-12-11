# Analysis of my time and my mood - updated for Summer 2021.
# Author: Peter Zhang

# imports
library("ggpubr")
library("knitr")
library("papeR")
library("memisc")
library("zoo")
library("dplyr")
library("tidyverse")
library("kableExtra")
library("sm")
library("scatterplot3d")

### LOADING

# read time data
time_data <- read.csv("time_tracking_data_su21.csv")

# calculate personal
time_data$Personal = time_data$Planning + time_data$Reading + time_data$Meditate + time_data$Exercise

# reformat days
time_data$Day <- as.Date(time_data$Day, "%m/%d/%Y")

# add on-campus flag
time_data$On_Campus <- time_data$Day >= as.Date("2021-03-01") & time_data$Day <= as.Date("2021-05-30")

### SUMMARY

# create summary table
kable(papeR::summarize(time_data), digits=5)

### COMPARISONS

# compare work
png(file="compare_work.png",
    width=600, height=400)
sm.density.compare(time_data$Work, time_data$On_Campus, xlab="Hours Worked per Day")
title(main="Working Hours On and Off Campus")
legend("topleft", inset = .05, title = "Location",legend= c("At Home", "In Berkeley"),
       fill = c(2:3), horiz=TRUE)
dev.off()

# compare sleep
png(file="compare_sleep.png",
    width=600, height=400)
sm.density.compare(time_data$Sleep, time_data$On_Campus, xlab="Hours Asleep per Day")
title(main="Sleeping Hours On and Off Campus")
legend("topleft", inset = .05, title = "Location",legend= c("At Home", "In Berkeley"),
       fill = c(2:3), horiz=TRUE)
dev.off()

# compare social
png(file="compare_social.png",
    width=600, height=400)
sm.density.compare(time_data$Social, time_data$On_Campus, xlab="Hours Socializing per Day")
title(main="Sleeping Socializing On and Off Campus")
legend("topleft", inset = .05, title = "Location",legend= c("At Home", "In Berkeley"),
       fill = c(2:3), horiz=TRUE)
dev.off()

### 3D SCAT

png(file="3d_scatter.png",
    width=400, height=400)
colors <- c("#E69F00", "#56B4E9")[as.numeric(time_data$On_Campus)+1]
s3d <- scatterplot3d(time_data$Sleep, time_data$Work, time_data$Social,
              type="h",
              main="Sleep-Work-Social On and Off Campus",
              xlab = "Sleep",
              ylab = "Work",
              zlab = "Social",
              color=colors)
s3d
legend(s3d$xyz.convert(12, 5, 20),
       legend = c("At Home", "At Berkeley"),
       col = c("#E69F00", "#56B4E9"),
       pch = 16)
dev.off()

### sCATTERPLOTS

work_sleep <- ggplot(data = time_data,
                      aes(x = Work,
                          y = Sleep,
                          color = Mood)) +
  geom_point() +
  ggtitle("Work and Sleep")+
  scale_color_gradient2(name="Mood",low = "blue", mid="darkgrey", high = "orange",  midpoint = 5) +
  theme(legend.position = "bottom")

social_work <- ggplot(data = time_data,
                      aes(x = Social,
                          y = Work,
                          color = Mood)) +
  geom_point() +
  ggtitle("Social and Work")+
  scale_color_gradient2(name="Mood",low = "blue", mid="darkgrey", high = "orange",  midpoint = 5) +
  theme(legend.position = "bottom")

# combine and write
ggarrange(work_sleep,
          social_work,
          nrow=1, ncol=2,
          common.legend = TRUE, legend="bottom") %>%
  ggexport(filename = "scatterplots.png",
       width=600,
       height=350)

### TIME SERIES

# time series without rolling
time_data %>%
  gather(variable, value, c(Sleep, Work, Personal, Social, FoShoTrans, Media)) %>%
  ggplot(aes(x = Day, y = value, fill = variable)) + 
  geom_area() +
  geom_vline(xintercept = as.Date("2021-03-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2021-05-30"), linetype="dotted", 
             color = "black", size=1.2) +
  xlab("Date") +
  ylab("Hours") +
  ggtitle("Time Allocation by Day")
ggsave(filename = "time_series_nosmooth.png",
       width=8,
       height=4)

# apply rolling window
z = zoo(time_data[,-1], time_data[[1]])
rz <- rollapply(z, 4, mean, by.column = TRUE, align = "left")
time_data_rolling <- fortify.zoo(rz)

# time series with rolling
time_data_rolling %>%
  gather(variable, value, c(Sleep, Work, Personal, Social, FoShoTrans, Media)) %>%
  ggplot(aes(x = Index, y = value, fill = variable)) + 
  geom_area() +
  geom_vline(xintercept = as.Date("2021-03-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2021-05-30"), linetype="dotted", 
             color = "black", size=1.2) +
  xlab("Date") +
  ylab("Hours") +
  ggtitle("Time Allocation, 4 Day-Average")
ggsave(filename = "time_series_smooth.png",
       width=8,
       height=4)


# work categories
time_data_rolling %>%
  gather(variable, value, c(Class, Debate, Voyager, Clubs, Internship, Competitions, Research, Recruiting, Blogging, Tutoring)) %>%
  ggplot(aes(x = Index, y = value, fill = variable)) + 
  geom_area() +
  geom_vline(xintercept = as.Date("2021-03-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2021-05-30"), linetype="dotted", 
             color = "black", size=1.2) +
  xlab("Date") +
  ylab("Hours") +
  ggtitle("Work Allocation, 4-Day Average")
ggsave(filename = "time_series_work.png",
       width=8,
       height=4)

# smooth some more
rz <- rollapply(z, 7, mean, by.column = TRUE, align = "left")
time_data_rolling <- fortify.zoo(rz)

# mood by month
time_data_rolling %>%
  ggplot(aes(x = Index, y = Mood)) + 
  geom_area(fill = "lightblue")  +
  geom_vline(xintercept = as.Date("2020-10-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2020-11-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2020-12-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2021-01-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2021-02-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2021-03-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2021-04-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2021-05-01"), linetype="dotted", 
             color = "black", size=1.2) +
  geom_vline(xintercept = as.Date("2021-06-01"), linetype="dotted", 
             color = "black", size=1.2)+
  xlab("Date") +
  ylab("Mood") +
  ggtitle("Mood 7-Day Average")
ggsave(filename = "time_series_mood.png",
       width=8,
       height=4)

### REGRESSION

# linear model
time_lm_1 <- lm(Mood ~ Reading + Planning + Social + Exercise + Media + Meditate,
                data = time_data)

# linear model
time_lm_2 <- lm(Mood ~ Class + Voyager + Debate + Clubs + Internship + Competitions + Research + Recruiting + Blogging + Tutoring,
                data = time_data)


# write to html
time_table <- mtable('Habits' = time_lm_1,
                     'Work' = time_lm_2,
                     summary.stats = c('R-squared', 'adj. R-squared', 'p'))
write_html(time_table, "time_reg_su21.html")

