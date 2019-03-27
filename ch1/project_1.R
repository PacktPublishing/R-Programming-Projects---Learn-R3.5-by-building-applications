long.form %>% melt(id.vars=c("time_in_days","dayofweek","weekend"),
measure.vars=c("hours_cleaning","hours_studying","hours_videogames"),
variable.name="activity",value.name="hours") %>% table.two
  

table.two<-function(table1) {
  result=table1
  result$activity=get_activity(result$activity)
  return(result)
}

get_activity<-function(str) (substr(str,7,str_length(str)))

#
plotlines <- function(data,columns) 
  




# write out your functional interface
# write out your solution in terms of those functions
# write your functions
  
  cform<-function(v) paste("c(",paste(v,collapse=','),")")


 
