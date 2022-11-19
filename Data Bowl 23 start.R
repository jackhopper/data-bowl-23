setwd("C:/Users/jackh/OneDrive/Documents/R Analytics/Data Cup 2022")
#Data glossary here: https://www.kaggle.com/competitions/nfl-big-data-bowl-2023/data

library(tidyverse)

#####READ DATA
games <- read_csv("games.csv")
pffScoutingData <- read_csv("pffScoutingData.csv")
players <- read_csv("players.csv")
plays <- read_csv("plays.csv")
week1 <- read_csv("week1.csv")
week2 <- read_csv("week2.csv")
week3 <- read_csv("week3.csv")
week4 <- read_csv("week4.csv")
week5 <- read_csv("week5.csv")
week6 <- read_csv("week6.csv")
week7 <- read_csv("week7.csv")
week8 <- read_csv("week8.csv")

all_weeks <- bind_rows(week1, week2, week3, week4, week5, week6, week7, week8)

all_weeks$eventId <- paste(all_weeks$gameId, all_weeks$playId)
