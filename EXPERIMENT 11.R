get_unique_char<-function(input_string)
{
  unique_char<-unique(strsplit(input_string,"")[[1]])
  return(unique_char)
}
get_unique_num<-function(input)
{
  unique_num<-unique(input)
  return(unique_num)
}
string<-"helloehell"
vec<-c(1,2,1,2,2,4)
unique_char<-get_unique_char(string)
cat("The unique characters are:",unique_char,"\n")
unique_num<-get_unique_num(vec)
cat("The unique chararcters are",unique_num,"\n")