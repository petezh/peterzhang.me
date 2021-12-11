# Analysis of my time and my mood.
# Author: Peter Zhang

# imports
library("ggpubr")
library("knitr")
library("papeR")
library("memisc")

# read time data
time_data <- read.csv("time_tracking_data.csv")
time_data$Personal = time_data$Planning + time_data$Social + time_data$Reading + time_data$Meditate


sleep_work <- ggplot(data = time_data,
       aes(x = Sleep,
           y = Work,
           color = Mood)) +
  geom_point() +
  ggtitle("Sleep and Work")+
  scale_color_gradient2(name="Mood",low = "blue", mid="darkgrey", high = "orange",  midpoint = 5) +
  theme(legend.position = "none")

personal_work <- ggplot(data = time_data,
       aes(x = Personal,
           y = Work,
           color = Mood)) +
  geom_point() +
  ggtitle("Personal and Work")+
scale_color_gradient2(name="Mood",low = "blue", mid="darkgrey", high = "orange",  midpoint = 5) +
  theme(legend.position = "none")


exercise_personal <- ggplot(data = time_data,
       aes(x = Exercise,
           y = Personal,
           color = Mood)) +
  geom_point() +
  ggtitle("Exercise and Personal")+
  scale_color_gradient2(name="Mood",low = "blue", mid="darkgrey", high = "orange",  midpoint = 5) +
  theme(legend.position = "none")

class_sleep <- ggplot(data = time_data,
                            aes(x = Class,
                                y = Sleep,
                                color = Mood)) +
  geom_point() +
  ggtitle("Class and Sleep")+
  scale_color_gradient2(name="Mood",low = "blue", mid="darkgrey", high = "orange",  midpoint = 5) +
  theme(legend.position = "bottom")


# combine and write
ggarrange(sleep_work,
          personal_work,
          exercise_personal,
          class_sleep,
          nrow=2, ncol=2,
          common.legend = TRUE, legend="bottom")  %>%
  ggexport(filename = "time_plots.png",
           width=600,
           height=650)

# create summary table
kable(summarize(time_data), digits=5)

# linear model
time_lm_1 <- lm(Mood ~ Sleep + Work + Exercise + FoShoTrans + Personal + Media,
                data = time_data)

# linear model
time_lm_2 <- lm(Mood ~ Class + Voyager + Debate + CSM + BER,
   data = time_data)


# linear model
time_lm_3 <- lm(Mood ~ Sleep + Planning + Reading + Meditate + Media,
                data = time_data)

# write to html
time_table <- mtable('Lifestyle' = time_lm_1,
                     'Work' = time_lm_2,
                     'Habits' = time_lm_3,
                       summary.stats = c('R-squared', 'adj. R-squared', 'p'))
write_html(time_table, "time_reg.html")

