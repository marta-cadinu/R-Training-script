## This code is a practice code that will help you use and learn some introductory R skills
## I would recommend watching the 'Using R with R studio' video on the learning hub before attempting this


## Please run the following initial lines, which will allow you to check solutions as you go through this script
## Loading solutions
source("solutions.R")


############################
## TASK 1 - Script writing## 
############################

## The first task is to save down your own version of this script to work on, pop your initials on the end
## No coding required for this!



####################
## TASK 2 - Help!!## 
####################

## Next, have a little explore of the explorer in the bottom right. 
## Note the file explorer and the help tab - try searching for a function you know and have a read of the material 
## e.g mean, percentage etc. 
## Pick a function you'd like to use later for some simple analysis on a data set - e.g. mean, median



###################################
## TASK 3 - Setting up your space## 
###################################

## Now comes the fun bit, your first bit of code...using the code setwd(), change the working directory to 
## the location of the practice data - add this to the line below

## Note the arguments in the function and check the help tab if you are unsure
## Remember to run a line of code you can use ctrl + Enter, or use the run button at the top of this square
## When constructing functions, its good practice to be explicit with the arguments e.g. setwd(x = 'YOUR WD') etc..
## If its not working and you're not sure why, check the examples in the help section

## The path to our folder in the drive is "Q:/RSH/Adhoc_Analysis/R/R L&D/R Practice" 
## Note: when writing a path in R, using \ will throw an error, using / or \\ is the best option


## If you're stuck, you can print the solution (cat() is a function to print out characters)
cat(.solution_3)



##############################
## TASK 4 - Package delivery## 
##############################

## Packages allow you to 'upgrade' RStudio to perform additional things and make life easier in many ways
## One used commonly for data analysis is 'dplyr'
## Use the install.packages() function and then the library() function to install and load dplyr, add this below.
## Check the help section if needed


## If you're stuck, you can print the solution and run it in your console
cat(.solution_4)



#####################
## TASK 5 - Objects## 
#####################

## Objects are things stored by R in your session
## Try entering 1:6 into the console and pressing enter - RStudio prints this out, but its not an object
## We need to call it something, you can use this 'YOUR__OBJECT_NAME <- 1:6' - enter it as part of your script run it.
## Notice it appears in the environment
## Naming things is a key process in R! I'll call mine 'Die'.


## If you're stuck, you can print the solution and run it in your console
cat(.solution_5a)



## You can manipulate this object in different ways e.g. 'Die / 2'  
## Try a few different simple mathematical functions in the console and see what happens
## Now do a mathematical function in both the console and the script and name it something so that it is stored


## If you're stuck, you can print the solution 
cat(.solution_5b)



## What do you think is the benefit of doing it in the console vs the script? 

## SPOILER FOR THE ABOVE Q! - Adding it to the script means you can save it for later and someone else can use it, 
## doing it in the console means it's just done in this session.



##############################################
## Task 6 - (Part 1) USING INBUILT FUNCTIONS## 
############################################## 

## So far you've already used a few functions! Nice! 
## Lets apply a function to our Die - pick a simple function such as mean, median, mode, 
## or a complex one if you like

## Try it out - remember the help box is your friend


## If you're stuck, you can print the solution and run it in your console
cat(.solution_6a)

## Lets say we want to roll a pair of dice, and add the total, how might we do that? 
## There is a function called 'sample()' that samples data from various object types which would be our starting point
## What is the size of the sample you want - how many times do you want to roll the dice? 
## Use replacement = TRUE for this function if you want more than 6 rolls of dice, and name the output something
## Now sum the new outputs together
## You rolled your die twice and added them up!


## If you're stuck, you can print the solution and run it in your console
cat(.solution_6b)


############################################# 
## Task 6 - (Part2) BUILD YOUR OWN FUNCTION## 
#############################################

## Lets make this code a little shorter and more streamlined, but how?
## Good news, functions can also be created by you! That's a lot of power in your hands!

## First and foremost, let's explain what a function is:
## A function in R is an object that contains multiple statements (kind of like actions) that are run together 
## in a predefined order every time the function is called.

## You can make a function do many steps all in one, which helps reproduce things for different data.
## So you can create a function, and then use it across a script/project to compute the same tasks over and over.

## Functions follow a specific syntax - here's an example for you to use as a guide:

## --- EXAMPLE 1 ---

#Run the following lines:
hello_world <- function(){
  'Hello, World!'
}

print(hello_world())


## As you can see the function above has a name (hello_world); a function 'function()' is called;
## some parameters are called (in this case only print('Hello, World!')).
## Functions can be as basic as the one above, or have more complexity as the one below

## Here there are more steps added to the function, so give this a go and see what happens!

## --- EXAMPLE 2 --- 

hello_world <- function(x){
  print('Hello, World!')
  print('I am learning about functions')
  print(x)
}


## You may have noticed that the function above is written for the so called argument 'x', 
## which is then also returned below.
## However, as you've see in the first example (EXAMPLE 1), a function doesn't need an argument - so don't worry 
## about this for now!


## PRACTICE!

## Lets try and make a function to roll our die like you did above, using the function 'function()'
## You'll need to name the function and add the previous section's calculations inside it.
## You can delete what is in your environment to test that it is all working as expected - use the little broom

## There are no arguments in this function, just calculations
## A line break between each part of the function makes it easier to read, but it can be done all on one line like excel.
## This one is a toughie so I'll get you started:


#   function() { die <- 1:6 
#   
#   
#
#   }



## STUCK?

## This is a good time to mention that AI tools can help you to understand what is going on and what you may be doing wrong
## I wouldn't lean on it too heavily to start or get it to write your code for you, its just not good enough yet and without experience you wouldn't know if its correct
## That said, data scientists of past leaned heavily on Stack Overflow for solutions and Copilot has sort of replaced this (the models ate most of these sites)
## Try using Copilot to explain how a function works and to give you an easier example to understand than in the help section (which can be confusing).

## You can also print the solution and run it in your console
## Remember to set replacement = TRUE if you want to roll the die more than 6 times
cat(.solution_6c)


## Still stuck? Give Jay Turner a message :)


##########################
## Task 7 - Time to read## 
##########################

## Let's read in some data...
## R likes CSV file types as these take less computer memory and are easier to read than xlsx
## This is important when dealing with big data sets
## There is practice data in a folder in the same directory we've used before.
## Let's try and read it using the package read_csv or readr. First let's load the package

## Do you remember how to do so? 
## There is no help for this step so you will need to scroll back up if you are stuck :)


## The read_csv function has a lot of arguments, most are optional in a function, 
## but let's use 'col_names' after the file path argument

## Notice how its not bringing it into our R environment? What might we need to do?

## If you're stuck, you can print the solution and run it in your console
cat(.solution_7)



#########################  
## Task 8 - Data frames## 
#########################  

## Data files that have rows and columns are called Data Frames in R, you may see notation of 'df' in your future R travels.
## The package 'dplyr' we installed and loaded earlier is excellent for the manipulation of data frames
## AI tools are very useful at explaining the uses of packages, have a go at having it explain 'dplyr'
## You can also consult the Help tab, or more documentation https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html

## Click on the down arrow on the data frame to see a summary of the column names - notice the '$' symbol 
## The '$' symbol can be used when you want to select a particular column for an analysis e.g. 'x = df$column_name'
## Alternatives can be used if preferred e.g. df[["column_name"]], you may see both in the future

## Also note the type of data in each column - 'chr', 'int', 'chr'
## A few different functions can also be used to check this also, such as str(), glimpse(), sapply(df, typeof)
## Give each of these functions a try - column types are something that will cause errors in your codes in the future as many functions only work on specific types


## If you're stuck, you can print the solution and run it in your console
cat(.solution_8a)


## Try selecting a column from the data frame, and running a simple mathematical function on one of the columns 
## that does not contain numbers
## You can also run the same function on a column that contains numbers and name it something


## If you're stuck, you can print the solution and run it in your console
cat(.solution_8b)


## This is a good place to stop the initial practice script

## Next time we'll look at connecting to our database and writing code that can query the SQL database
## We'll also create some visualisations using 'ggplot2'and perform some more complex data analysis.


