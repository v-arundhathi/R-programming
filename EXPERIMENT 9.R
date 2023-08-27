a<-10
c<-0
for(i in 1:a)
{
  if(a %% i==0)
  {
    c=c+1
  }
  
}
cat("THE no of Factors: ",c)