library(dplyr)

df <- read.csv('MechaCar_mpg.csv')

lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df)

summary(lm)

df2 <- read.csv("Suspension_Coil.csv")

total_summary <- df2 %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary

lot_summary <- df2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary

t.test(x=df2$PSI, y=NULL, mu=1500)

Lot1 <- subset(df2, (df2$Manufacturing_Lot == "Lot1"))
Lot2 <- subset(df2, (df2$Manufacturing_Lot == "Lot2"))
Lot3 <- subset(df2, (df2$Manufacturing_Lot == "Lot3"))



t.test(Lot1$PSI, y=NULL, mu=1500)
t.test(Lot2$PSI, y=NULL, mu=1500)
t.test(Lot3$PSI, y=NULL, mu=1500)
