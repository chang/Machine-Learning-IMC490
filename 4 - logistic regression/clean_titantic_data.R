require(dplyr)
require(magrittr)

DIRECTORY = "~/Documents/Spring2017/Machine-Learning-IMC490/Lab4/"

setwd(DIRECTORY)
dat <- read.csv("titanic.csv")

dat <- 
  dat %>%
    select(-sibsp, -parch, -ticket, -cabin,
           -embarked, -boat, -body, -home.dest) %>% 
    filter(!is.na(age) & !is.na(fare)) %>% 
    mutate(pclass = as.factor(pclass))
  
write.csv(dat,"titanic_cleaned.csv", row.names = FALSE)