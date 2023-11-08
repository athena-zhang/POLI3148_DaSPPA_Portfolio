# Title:         Lecture 2 - R Basics
# Purpose:       This script use R to perform basic quantative analysis
# Author:        Athena Zhang
# Last update:   2023-09-14
# Memo:          ...

# 2 Some R Basics ----
## 2.1 Getting started ----

pi
# [1] 3.141593

## 2.2 Objects in R ----

### Numeric object ----

# no leading numbers in naming objects
2obj <- 2 # WRONG
# no space in naming objects
obj 2 <- 2 # WRONG
# "." are allowed, but not recommended
obj.2 <- 2

my_obj <- 48
my_obj <- 36

my_obj
# [1] 36

print(my_obj)
# [1] 36

?print

# give informative names to objects
gdp_growth_china <- 5.4


### Character object ----

obj_character <- "R is cool"
obj_character <- 'R is cool' # same as ""

# if there is ' within the string, use "" to encase the string
obj_character_2 <- "R's cool"

### Remove objects ----

# Remove a single object
rm(my_obj)

# Remove all the objects from the environment
rm(list = ls())

## 2.3 Vector ----

my_vec <- c(2, 3, 1, 6, 4, 3, 3, 7)
my_vec
# [1] 2 3 1 6 4 3 3 7

### Basic functions applied to vectors ----

mean(my_vec)
# [1] 3.625
var(my_vec)
# [1] 3.982143
# variance
sd(my_vec)
# [1] 1.995531
# standard deviation
length(my_vec)
# [1] 8
# number of elements


### Create sequences ----

my_seq <- 1:10
my_seq
#  [1]  1  2  3  4  5  6  7  8  9 10

my_seq_reverse <- 10:1
my_seq_reverse
#  [1] 10  9  8  7  6  5  4  3  2  1

my_seq_advanced <- seq(from = 1, to = 5, by = 0.5)
my_seq_advanced
# [1] 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0

### Create repetition ----

my_seq_rep <- rep(2, times = 10)
my_seq_rep
# [1] 2 2 2 2 2 2 2 2 2 2

my_seq_rep_2 <- rep(1:5, times = 10)
my_seq_rep_2
# [1] 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5

my_seq_rep_3 <- rep(2:6, each = 3)
my_seq_rep_3
# [1] 2 2 2 3 3 3 4 4 4 5 5 5 6 6 6


### Missing values ----

temp <- c(1, 2, 3, NA) 
temp
# [1]  1  2  3 NA

# NA is the indicator of missing data in R

mean(temp)
# [1] NA
# for mathematical calculations with NA values, R calculates with NA values by default

mean(temp, na.rm = TRUE)
# [1] 2
# na.rm stands for NA remove


## Getting help ----

# use '?' to bring out help file of a function
?mean

# use example () function to provide an exampe of a function
example("var")


# 3 Data in R ----

## 3.1 Data types ----

rm(list=ls())

### Numeric ----

obj_num <- 4.3

class(obj_num)
# [1] "numeric"

typeof(obj_num)
# [1] "double"

is.numeric(obj_num)
# [1] TRUE

### Integer ----

obj_num2 <- 6L
# assign L after the number to make type an integer

class(obj_num2)
# [1] "integer"

typeof(obj_num2)
# [1] "integer"

is.integer(obj_num2)
# [1] TRUE

### Logical ----

obj_logical <- TRUE
obj_logical <- T

obj_logical2 <- FALSE
obj_logical2 <-F

is.logical(obj_logical)
# [1] TRUE

class(obj_logical)
# [1] "logical"

type(obj_logical2)
# Error in type(obj_logical2) : could not find function "type"

### Character ----

obj_character <- "R is cool"

is.character(obj_character)
# [1] TRUE


### Coersion ----

obj_to_change <- c("1", "3", "missing", "4", "5")

mean(obj_to_change)
# [1] NA
# Warning message:
#  In mean.default(obj_to_change) :
#  argument is not numeric or logical: returning NA

# use as.type to coerce
obj_changed <- as.numeric(obj_to_change)
# Warning message:
# NAs introduced by coercion

obj_to_change
# [1] "1"       "3"       "missing" "4"       "5"  
obj_changed
# [1]  1  3 NA  4  5


### List ----

# lists can contain a mixture of elements or types of data
# most flexible data structure

list_1 <- list(
    c("black", "orange", "yellow"),
    c(T, F),
    matrix(1:6, nrow = 3)
)
list_1
# [[1]]
#[1] "black"  "orange" "yellow"
#
#[[2]]
#[1]  TRUE FALSE
#
#[[3]]
#     [,1] [,2]
#[1,]    1    4
#[2,]    2    5
#[3,]    3    6

# naming vectors within lists with 'name' = c()

list_2 <- list(
  color = c("black", "orange", "yellow"),
  truth = c(T, F),
  mat = matrix(1:6, nrow = 3)
)

list_2
# $color
#[1] "black"  "orange" "yellow"
#
#$truth
#[1]  TRUE FALSE
#
#$mat
#     [,1] [,2]
#[1,]    1    4
#[2,]    2    5
#[3,]    3    6

list_2$truth
# [1]  TRUE FALSE

list_3 <- list(
  color = c("black", "orange", "yellow"),
  truth = c(T, F, T)
)

list_3
#$color
#[1] "black"  "orange" "yellow"
#
#$truth
#[1]  TRUE FALSE  TRUE

# coercing a list into a data frame with as.data.frame()

as.data.frame(list_3)
#   color truth
#1  black  TRUE
#2 orange FALSE
#3 yellow  TRUE

### Data Frame ----

p.height <- c(180, 155, 160, 167, 181)
p.weight <- c(65, 50, 52, 58, 70)
p.names <- c("Joanna", "Charlotte", "Helen", "Karen", "Amy")

# create data frames with data.frame () function
dataf <- data.frame(height = p.height, 
                    weight = p.weight, 
                    names = p.names)

View(dataf)
#view data frame visually in tabular form

summary(dataf)
#    height          weight      names          
#Min.   :155.0   Min.   :50   Length:5          
#1st Qu.:160.0   1st Qu.:52   Class :character  
#Median :167.0   Median :58   Mode  :character  
#Mean   :168.6   Mean   :59                     
#3rd Qu.:180.0   3rd Qu.:65                     
#Max.   :181.0   Max.   :70

names(dataf)
# [1] "height" "weight" "names" 

dim(dataf)
# [1] 5 3
# Row x Column

summary(dataf$height)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 155.0   160.0   167.0   168.6   180.0   181.0 

table(dataf$names)
#
#Amy Charlotte     Helen    Joanna     Karen 
#1         1         1         1         1 

#### Get to specific locations of a data frame ----

#### Row 1
dataf[1,]
# height weight  names
# 1    180     65 Joanna

#### Column 2
dataf[, 2]
# [1] 65 50 52 58 70

#### Cell at row 1, column 2
dataf[1, 2]
# [1] 65