rm(list = ls())

#安装stringr包
install.packages("stringr")
library(stringr)

#字符数统计
x <- c("Hellow", "World", "!") 

nchar(x)         #R自带函数

str_length(x)    #stringr中统计字符数的


y <- matrix(1:9,ncol = 3)   #输入矩阵变量，观察输出

nchar(y)

str_length(y)

#指定元素统计
x1 <- c("Hellow", "WorldWorld", "aroundWorld")
str_count(x1,"World")

#字符串连接
paste("abc","def",sep = ",")

paste0("abc","def")

str_c("abc","def",sep = ",",collapse = 1)

str_c("abc",if(2<=1)"def","ghi",sep = ",",collapse = 1)  #条件语句

#字符串截取

substr(x1,start = 3, stop = 5)

substring(x1,first = c(1,3,4), last = c(5,6))


x2 <- "123456789"
str_sub(x2,start = c(1,2,3), end = c(4,5,6))

#字符串拆分

strsplit("HELLO THE WORLD !","")

strsplit("HELLO THE WOR\rLD !","")   #观察正则表达式\r的拆分的情况

head(str_split(sentences,""))    #将sentences中的英语例句进行拆分，只显示前六句


#字符匹配：以sentences为例，找出全部的“the”
str_view(sentences,"the")     #每句只有第一个the 被找出

str_view_all(sentences,"the")    #每句所有的the都被找出

files <- list.files("c:/rtools40")#以查找电脑指定文件夹rtools40中.exe文件为例，可以自行修改文件夹的位置
grep("\\.exe$", files)    #找到.exe的位置
grepl("\\.exe$", files)   #判断是否为.exe


#执行字符串
x <- 1:10
a <- "print(x)"
class (a)     #a本身为字符串
eval(parse(text = a))    #执行字符串

