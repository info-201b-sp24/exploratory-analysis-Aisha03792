# Load ggplot2
library(ggplot2)

# evaluates possible consumers vs revenue when there is inclusivity of shades
# between Fenty and Mac Cosmetics!

Consum_vs_revenue <- data.frame()


# Grouped Bar Plot
ggplot(data = midwest) +
  geom_bar(Consum_vs_revenue, aes(
    x = Consumers,
    y = Revenue))


ggplot(data = midwest) +
  geom_col(mapping = aes(
    x = state,
    y = poptotal,
    color = state))


