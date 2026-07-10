install.packages(c("tm", "wordcloud", "RColorBrewer", "ggplot2"))

library(tm)
library(wordcloud)
library(RColorBrewer)
library(ggplot2)

setwd("~/Desktop/Shukeri P156824/YEAR 2 SEM 1/UNSTRUCTURED/PROJECT 1_30%/Part1_Task3_text_exploration")

lyrics_data <- read.csv("five_original_lyrics_different_themes.csv")

View(lyrics_data)

corpus <- Corpus(VectorSource(lyrics_data$lyrics))

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, stripWhitespace)

dtm <- DocumentTermMatrix(corpus)

dtm_matrix <- as.matrix(dtm)

term_frequency <- colSums(dtm_matrix)

term_frequency <- sort(term_frequency, decreasing = TRUE)

frequency_table <- data.frame(
  term = names(term_frequency),
  frequency = term_frequency
)

head(frequency_table, 10)

# write.csv(frequency_table, "lyrics_frequency_table.csv", row.names = FALSE)

top_terms <- head(frequency_table, 10)

ggplot(top_terms, aes(x = reorder(term, frequency), y = frequency)) +
  geom_bar(stat = "identity", fill = "darkblue") +
  coord_flip() +
  labs(
    title = "Top 10 Most Frequent Terms in Lyrics",
    x = "Terms",
    y = "Frequency"
  ) +
  theme_minimal()

set.seed(123)

wordcloud(
  words = frequency_table$term,
  freq = frequency_table$frequency,
  min.freq = 1,
  max.words = 200,
  random.order = FALSE,
  colors = brewer.pal(8, "Dark2")
)
