## create the region

temp=function(x,y) 
bdry=function(x,y) {
   outer.ring=pmax(abs(x-0.5),abs(y-0.5))==0.5
   inner.dot=pmax(abs(x-.5),abs(y-0.5))<.1
   outer.ring | inner.dot
}



x=seq(0,1,0.01)
y=seq(0,1,0.01)

bb=function(x,y,FUN) {
temp.matrix=outer(x,y,FUN)
image(x,y,temp.matrix)
return(temp.matrix)
}

bndry=list(f1=function(x,y) pmax(abs(x-0.5),abs(y-0.5))==0.5,
           f2=function(x,y) pmax(abs(x-0.5),abs(y-0.5)) < 0.1)

in.boundary=function(x,y) do.call('|',lapply(bndry,(function(f) f(x,y))))
