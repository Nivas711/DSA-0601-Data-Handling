library(ggplot2)
sales<-data.frame(
  Category=c("Electronics","Clothing","Appliances"),
  Sales=c(50000,35000,40000)
)
ggplot(sales,aes(x="",y=Sales,fill=Category))+
  geom_col(width=1)+
  coord_polar("y")+
  geom_text(aes(label=Category),position=position_stack(vjust=0.5))+
  labs(title="Sales Distribution Across Product Categories")+
  theme_void()