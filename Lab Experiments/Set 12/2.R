library(ggplot2)
traffic<-data.frame(
  Date=as.Date(c("2023-01-01","2023-01-02","2023-01-03")),
  Page_Views=c(1500,1600,1400),
  CTR=c(2.3,2.7,2.0)
)
traffic<-traffic[order(-traffic$CTR),]
ggplot(traffic,aes(x=reorder(as.character(Date),CTR),y=CTR,fill=CTR))+
  geom_col()+
  geom_text(aes(label=paste0(CTR,"%")),vjust=-0.5)+
  labs(title="Top Days by Click-Through Rate",
       x="Date",
       y="Click-Through Rate (%)")+
  theme_minimal()
