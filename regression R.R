####load x, y data

df=data.frame(x,y)

library(ggplot2)
yield=read.csv("C:/Users/hchin/OneDrive/Atlantic Beach/Documents/PhD/DPhil/Yield_Gap_analysis/Yield_Gaps/Glasshouse/yield.csv")
attach(yield)
lmod=lm(Simulated~Measured,yield)
summary(lmod)

ggplot(yield,aes(Simulated,Measured))+
  geom_point()+
  geom_smooth(method = "lm",se=0)+
  theme_classic()+
  annotate("text",x=700,y=750,label="
           p value=0.03")+annotate("text",x=600,y=750,label="
           R-squared=0.71")
