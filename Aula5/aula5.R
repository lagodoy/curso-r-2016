library(magrittr)
library(ggplot2)
library(dplyr)

ajuste_lm <- lm(mpg ~ wt, data = mtcars)

coeficientes <- coef(ajuste_lm)

ggplot(mtcars) + 
  geom_point(aes(x = wt, y = mpg)) +
  geom_abline(intercept = coeficientes[1], slope = coeficientes[2])

ajuste_lm <- lm(mpg ~ wt, data = mtcars)

ajuste_lm

cor(mtcars$wt, mtcars$mpg)

cor(mtcars$wt, mtcars$mpg)^2

summary(ajuste_lm)

par(mfrow=c(2,2))

plot(ajuste_lm)

ajuste_lm2 <- lm (mpg ~ wt + cyl, data = mtcars)

anova(ajuste_lm2)

res <- residuals(ajuste_lm)
res %>% round(2)

mtcars %>% 
  add_rownames() %>% 
  filter(res %>% abs >6 )


ajuste_lm_completo <- lm(mpg ~ ., data = mtcars)

# modelo forward
step(ajuste_lm_completo, direction = "forward")

# modelo backward
step(ajuste_lm_completo, direction = "backward")

# modelo both
step(ajuste_lm_completo, direction = "both")

mtcars_com_outliers <- mtcars %>% 
  add_rownames %>% 
  mutate(outlier = ifelse(res %>% abs > 6, rowname, ''))

ggplot(mtcars_com_outliers) +
  geom_point(aes(x = wt, y = mpg)) +
  geom_text(aes(label = outlier)) +
  geom_abline(intercept = coeficientes[1], slope = coeficientes[2])

ajuste_glm <- glm(am ~ wt, data = mtcars, family = "binomial")

table(mtcars$am, predict(ajuste_glm, type = 'response') > 0.5)

install.packages("tree")
library(tree)

ajuste_tree <-  tree(factor(am) ~ wt, data = mtcars)
summary(ajuste_tree)
  