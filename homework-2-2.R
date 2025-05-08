# HEADER --------------------------------------------
#
# Author:    郑晓飞
# Copyright     Copyright 2025 - Name Surname
# Email:      xiaof947172@163.com
#
# Date:     2025-03-17
#
# Script Name:    
#
# Script Description:写一段R脚本，自定义一个函数，检查随机向量rnorm(n = 10, mean= 35, sd = 10）中的每个值是否高于阈值35（可以用for循环，也可用apply()家族）。
#
#
# SETUP ------------------------------------


# 设置参数和生成随机向量
n <- 10
threshold <- 35
random_vector <- rnorm(n, mean = 35, sd = 10)

# 使用for循环检查每个值
for (value in random_vector) {
  if (value > threshold) {
    cat(value, "高于阈值\n")
  } else {
    cat(value, "不高于阈值\n")
  }
}

