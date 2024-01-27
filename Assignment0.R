library(tidyverse)
library(ggplot2)

data <- read_csv("~/Downloads/loan_default_data_set.csv")
View(data)

data1 <- na.omit(data)

data1$Def_ind

categorical_values <- factor(data1$Def_ind, labels = c("Not Defaulted", "Defaulted"))

ggplot(data1) +
  geom_boxplot(mapping = aes(x=categorical_values,y=tot_balance),color="black")

ggplot(data1) +
  geom_boxplot(mapping = aes(x=categorical_values,y=cred),color="black")

ggplot(data = data1, mapping = aes(x=credit_card_age, y=tot_amount_currently_past_due))+
  geom_point()+
  geom_smooth(aes(color = rep_education))+
  facet_wrap(~rep_education)

ggplot(data=data1, aes(x=categorical_values, y=avg_bal_cards))+
  geom_boxplot()
