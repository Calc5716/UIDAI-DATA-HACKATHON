# Reading the datasets

df = read.csv("C:\\Users\\Paramesh\\Downloads\\bio_state.csv")

# -------------------------------Linear Model-----------------------------------------------

model = lm(bio_rate_per_100k ~ factor(region) + season - 1, data = df)

summary(model)

model2 = lm(
  bio_rate_per_100k ~ region * season + is_weekend,
  data = bio_state
)

summary(model2)


# Testing of hypothesis

# Effect of Region (ANOVA)
anova_model_region = aov(bio_rate_per_100k ~ region, data = df) 

summary(anova_model_region)

#Effect of Seasons (ANOVA)
anova_model_season = aov(bio_rate_per_100k ~ season, data = df)

summary(anova_model_season)

#Effect of Region x Seasons
anova_model_int = aov(bio_rate_per_100k ~ region * season, data = df)

summary(anova_model_int)

#Effect of Weekends

summary(aov(bio_rate_per_100k ~ factor(is_weekend), data = df))

# ANCOVA

ancova_model <- aov(
  bio_rate_per_100k ~ factor(region) + factor(season) + month,
  data = df
)

summary(ancova_model)


#ANCOVA

ancova_int <- aov(
  bio_rate_per_100k ~ factor(region) * factor(season) + month,
  data = df
)

summary(ancova_int)

#WEEKEND EFFECT

weekend_ancova <- aov(
  bio_rate_per_100k ~ factor(region) + factor(season) + is_weekend + month,
  data = df
)

summary(weekend_ancova)


#QUARTER

reg_quar_model = aov(bio_rate_per_100k ~ factor(region) + factor(quarter), data=df)
summary(reg_quar_model)

wknd_reg_model = aov(bio_rate_per_100k ~ is_weekend + factor(region), data=df)
summary(wknd_reg_model)

qurt_model = lm(bio_rate_per_100k ~ factor(quarter) - 1, data = df)
summary(qurt_model)


#################
install.packages("effectsize")
library(effectsize)
eta_squared(anova_model_int)


eta_squared(aov(bio_rate_per_100k ~ is_weekend, data=df))

