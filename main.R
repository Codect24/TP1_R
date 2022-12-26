mnist <- read.csv("TP1-Stats2022/mnist.csv", sep = ";", header = TRUE)
train <- mnist %>%
        group_by(label) %>%
        sample_frac(0.8)
test <- mnist %>%
        anti_join(train)
prediction <- knn(train[, -1], test[, -1], cl = train$label, k = 1)
