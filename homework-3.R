# HEADER --------------------------------------------
#
# Author:     郑晓飞

# Email:      xiaof947172@163.com
#
# Date:     2025-03-25
#
# Script Name: homework-3-R   

# SETUP ------------------------------------

#Exercise-1

x <- c(11,12,13)
y <- c(14,15,16)
z <- c(17,18,19)   #创建三个向量x,y,z
m1 <- cbind(x,y,z) #向量合并,按照列
rownames(m1) <- c("a", "b", "c")  #更改行名为a,b,c
print(m1)
m2 <- rbind(x,y,z) #向量合并,按照列
colnames(m2) <- c("a", "b", "c")  #更改行名为a,b,c
print(m2)



#Exercise-2

install.packages("ade4")  # 安装ade4包
library(ade4)  # 加载ade4包
data("doubs")  # 导入doubs数据集
class(doubs)   # 查看数据类型
str(doubs)     # 查看数据结构
write.csv(doubs, "doubs_dataset.rds")  # 保存为 RDS 文件）最好是存在CSV


