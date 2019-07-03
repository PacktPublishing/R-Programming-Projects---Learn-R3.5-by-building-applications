# some utility functions
redraw<-function(x,digits=0) paste("c(",x %>% round(digits) %>% paste(collapse = ','),")")

# randomize_howell_data
folks=howell %>% filter(age<34 & age>=30) %>% group_by(male) %>%
   sample_n(size=10) %>% mutate(height=height/2.53,weight=weight * 2.204)

# inputs : horiz, vert must be numbers

make.plotgrid=function(x,y,fcn=function(x,y) x*y*0) {
   if(!is.numeric(x) || !is.numeric(y)) stop ("invalid input. expecting numeric, got ", horiz,vert)
   # else not necessary because of the stop
   xc=outer(x,y,function(x,y) x)
   yc=outer(x,y,function(x,y) y)
   list(xc,yc,vals=outer(x,y,fcn))
}

