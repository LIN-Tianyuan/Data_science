data <- read.csv("countries.csv", header = TRUE)
# 行数和列数
dim(data)
# ex1
# 从1开始
data[1, 'Population']
# Number of rows
# ex2
print(nrow(data))
# ex3
print(ncol(data))
print(dim(data))
# ex4
# populations <- data$Population
populations <- data[["Population"]]
# ex5
for (pop in populations){
  print(pop)
}
# ex6
total_population <- 0
for (pop in populations) {
  total_population <- total_population + pop
}
avg <- total_population / length(populations)
print(paste('Average:', avg))

# ex7
populations <- data$Population
average <- function(populations) {
  total_population <- 0
  for (pop in populations) {
    total_population <- total_population + pop
  }
  avg <- total_population / length(populations)
  return(avg)
}
print(paste('Average:', average(populations)))

avg <- average(populations)
avg

# ex8
mean(populations)