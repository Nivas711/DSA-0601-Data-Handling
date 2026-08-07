library(ggplot2)
sales<-data.frame(
  Category=c("Electronics","Appliances","Clothing"),
  Sales=c(50000,40000,35000)
)
ggplot(sales,aes(x=reorder(Category,Sales),y=Sales,fill=Category))+
  geom_col()+
  coord_flip()+
  geom_text(aes(label=Sales),hjust=-0.2)+
  labs(title="Sales Conversion Funnel",
       x="Category",
       y="Sales")+
  theme_minimal()