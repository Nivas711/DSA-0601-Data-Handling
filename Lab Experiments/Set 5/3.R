# Sample User Interaction Data
likes <- c(200,220,180,250,300)
shares <- c(80,90,70,100,110)
comments <- c(40,50,35,45,60)

# Stacked Area Chart
interaction <- rbind(likes, shares, comments)

colors <- c("skyblue","orange","lightgreen")

plot(c(1,5), c(0,500),
     type="n",
     xaxt="n",
     xlab="Date",
     ylab="Interactions",
     main="Stacked Area Chart of User Interactions")

axis(1, at=1:5, labels=date)

polygon(c(1:5,5:1),
        c(likes,rep(0,5)),
        col=colors[1],
        border=NA)

polygon(c(1:5,5:1),
        c(likes+shares,likes[5:1]),
        col=colors[2],
        border=NA)

polygon(c(1:5,5:1),
        c(likes+shares+comments,(likes+shares)[5:1]),
        col=colors[3],
        border=NA)

legend("topleft",
       legend=c("Likes","Shares","Comments"),
       fill=colors)