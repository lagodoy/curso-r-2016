install.packages("ggplot2")

library(ggplot2)

head(mtcars)

ggplot(data = mtcars, aes(x = disp, y = mpg)) + 
  geom_point()

ggplot(data = mtcars, aes(x = disp, y = mpg, colour = as.factor(am))) + 
  geom_point()

ggplot(mtcars, aes(x = disp, y = mpg, colour = cyl)) + 
  geom_point()

ggplot(mtcars, aes(x = disp, y = mpg, colour = cyl, size = wt)) +
  geom_point()

ggplot(mtcars, aes(x = as.factor(cyl), y = mpg)) + 
  geom_boxplot()

ggplot(mtcars, aes(x = mpg)) + 
  geom_histogram()

ggplot(mtcars, aes(x = as.factor(cyl))) + 
  geom_bar()

ggplot(mtcars, aes(x = as.factor(cyl), y = mpg, colour = as.factor(cyl))) + 
  geom_boxplot()
ggplot(mtcars, aes(x = as.factor(cyl), y = mpg, fill = as.factor(cyl))) + geom_boxplot()

ggplot(mtcars, aes(x = as.factor(cyl), y = mpg)) + 
  geom_boxplot(color = "red", fill = "pink")

ggplot(mtcars, aes(x = mpg)) + 
  geom_histogram() +
  xlab("Milhas por galão") +
  ylab("Frequência")

ggplot(mtcars, aes(x = mpg)) + 
  geom_histogram() +
  xlab("Milhas por galão") +
  ylab("Frequência") +
  xlim(c(0, 40)) +
  ylim(c(0,8))

ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  labs(fill = "cyl")

ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  labs(fill = "cyl") +
  theme(legend.position="top")

ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  guides(fill=FALSE)

ggplot(mtcars, aes(x = mpg, y = disp, colour = as.factor(cyl))) + 
  geom_point() + 
  facet_grid(am~.)

ggplot(mtcars, aes(x = mpg, y = disp, colour = as.factor(cyl))) +
  geom_point() + 
  facet_grid(.~am)
