mpg <- mtcars$mpg
summary(mpg)
hist(mpg)

#let's create a few object!
mpg <- mtcars$mpg
cyl <- mtcars$cyl

save(mpg, cyl, file="mtcars_objects.rda")

load("mtcars_objects.rda")

saveRDS(mpg, file="mpg.rds")
mpg <- readRDS("mpg.rds")
readRDS("mpg.rds")



