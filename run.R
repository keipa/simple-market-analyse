

initial <- read.csv("rnsdataset.csv")
dat <- initial


# > plot(dat$dist_to_subway, dat$price) # test plot



model <- lm(price ~   dist_to_subway + size_t + room_no + furniture + floor+ floors, data = dat)
price <- dat$price
cost <- predict(model, dat)

rank <- sort(price / cost)
plot(density(price))
plot(cost, price)
l <- lm(price ~ cost)
par(new=TRUE, col="red")  
abline(l)