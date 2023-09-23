Biku<-read.csv("E:/MNCH 74-75W Report to press basnet/Blup analyis sample data/Sam For analysis.csv")
print(Biku)
library(metan)
model<-gamem(data_g,
             gen = GEN,
             rep= REP,
             resp = everything())
a=gmd(model,"blupg")
a
print(a,n=2000)
aku<-mgidi(model)
p1<-plot(aku, type = "contribution")
p2<-plot(aku)
p2
p1+p2
arrange_ggplot(p1, p2)
