install.packages('caTools')

#create vector

years_experienced = c(1.1,1.3,1.5,2.0,2.2,2.9,3.0,3.2,3.2,3.7)
salary  = c(39343,46205,37731,43525,39891,56642,60150,54445,64445,57189)

#create dataset

trainingset = data.frame(years_experienced,salary)

#create scatterplot

scatter.smooth(years_experienced,salary,main='years experienced vs salary')

#library

library(caTools)

#Linear regression model

lm.r= lm(formula = salary ~ years_experienced,
         data = trainingset)

#Summary

summary(lm.r)

#Res

resid(lm.r)