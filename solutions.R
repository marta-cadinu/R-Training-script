##Please look at these solutions if you are stuck

#Solutions below - saved as hidden objects
.solution_3 <- 'setwd("Q:/RSH/Adhoc_Analysis/R/R L&D/R Practice")'
.solution_4 <- 'install.packages("dplyr")
library(dplyr)'
.solution_5a <- 'YOUR_OBJECT_NAME <- 1:6'
.solution_5b <- 'YOUR_OBJECT_NAME*2'
.solution_6a <- 'mean(YOUR_OBJECT_NAME)'
.solution_6b <- 'roll <- sample(YOUR_OBJECT_NAME, 2, FALSE)
sum(roll)'
.solution_6c <- 'rolling_dice <- function(){
                  die <- 1:6
                  roll <- sample(die, 2, FALSE)
                  sum <- sum(roll)
                  cat("The die rolled to", paste(roll, collapse = ", "), "and the sum of the rolls is", paste(sum))
                  }
rolling_dice()'
.solution_7 <- 'df <- read_csv("Q:/RSH/Adhoc_Analysis/R/R L&D/R Practice/Practice data/Practice_data_to_load.csv")'
.solution_8a <- 'glimpse(df)'
.solution_8b <- 'mean(df[["Number of units"]])'
