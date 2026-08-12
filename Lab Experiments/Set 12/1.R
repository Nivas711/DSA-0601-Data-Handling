library(ggplot2)
traffic<-data.frame(
  Date=as.Date(c("2023-01-01","2023-01-02","2023-01-03")),
  Page_Views=c(1500,1600,1400),
  CTR=c(2.3,2.7,2.0)
)
ggplot(traffic,aes(x=Date,y=Page_Views))+
  geom_line(color="blue",linewidth=1)+
  geom_point(size=3,color="red")+
  labs(title="Daily Page Views Over Time",
       x="Date",
       y="Page Views")+
  theme_minimal()