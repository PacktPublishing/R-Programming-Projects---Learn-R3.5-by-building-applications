rm(list=ls()) # clear all variable storage
days<-1:14 
# note: Su, Mo,Tu,We,Th,Fr,Sa
hours_videogames<-c( 3, 1, 2, 4, 3, 0, 5, 1, 4, 1, 2, 0, 5, 0)
hours_studying<- c( 0, 2, 3, 2, 1, 4, 4,2, 3, 2, 0, 4, 2, 0)
total_hours = hours_videogames + hours_studying
print(length(hours_videogames))
hours_cleaning=c(1,0,1,0,1,0,0) # one day on, one day off no Saturday
is_weekend=c(TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE)
day_names=c("Su","Mo","Tu","We","Th","Fr","Sa")
horrible_days=(hours_studying > 0) & (hours_videogames==0) 

# function is.odd: 
# returns TRUE if a number is odd, and FALSE if even
# the results are unspecified if the input is not an integer.
# Vectorizable.

activity.log = data.frame(days, #note 1
                          Weekend=(is_weekend==1), # note 2 and 3
                          hours_cleaning,
                          hours_studying,
                          hours_videogames,
                          name="Jillian", # note 4
                          day_names,
                          stringsAsFactors=FALSE) # note 7

print(activity.log,row.names = FALSE)
