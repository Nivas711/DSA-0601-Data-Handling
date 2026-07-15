feedback <- c(
  "Good service",
  "Excellent product",
  "Very satisfied",
  "Good quality",
  "Excellent support"
)
docs <- Corpus(VectorSource(feedback))
wordcloud(docs,
          max.words = 20,
          colors = rainbow(10))